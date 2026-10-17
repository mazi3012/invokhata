import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/services/settings_service.dart';
import '../../data/gst_report_models.dart';
import '../../data/gst_report_repository.dart';

final gstReportRepositoryProvider = Provider<GstReportRepository>(
  (ref) => GstReportRepository(),
);

final gstReportProvider =
    StateNotifierProvider<GstReportNotifier, GstReportState>(
  (ref) => GstReportNotifier(ref),
);

class GstReportState {
  final GstReportFilter filter;
  final AsyncValue<GstReportData> data;

  const GstReportState({required this.filter, required this.data});

  GstReportState copyWith({
    GstReportFilter? filter,
    AsyncValue<GstReportData>? data,
  }) {
    return GstReportState(
      filter: filter ?? this.filter,
      data: data ?? this.data,
    );
  }
}

class GstReportNotifier extends StateNotifier<GstReportState> {
  final Ref _ref;

  GstReportNotifier(this._ref)
      : super(
          GstReportState(
            filter: _defaultFilter(),
            data: const AsyncValue.loading(),
          ),
        ) {
    load();
  }

  Future<void> load() async {
    state = state.copyWith(data: const AsyncValue.loading());
    try {
      final report =
          await _ref.read(gstReportRepositoryProvider).load(state.filter);
      state = state.copyWith(data: AsyncValue.data(report));
    } catch (error, stackTrace) {
      state = state.copyWith(data: AsyncValue.error(error, stackTrace));
    }
  }

  Future<void> setPreset(GstDatePreset preset) async {
    final dates = _datesForPreset(preset, DateTime.now());
    state = state.copyWith(
      filter: state.filter.copyWith(
        startDate: dates.$1,
        endDate: dates.$2,
        preset: preset,
      ),
    );
    await load();
  }

  Future<void> setCustomRange(DateTime start, DateTime end) async {
    final normalizedStart = DateTime(start.year, start.month, start.day);
    final normalizedEnd = DateTime(end.year, end.month, end.day);
    state = state.copyWith(
      filter: state.filter.copyWith(
        startDate: normalizedStart.isAfter(normalizedEnd)
            ? normalizedEnd
            : normalizedStart,
        endDate: normalizedStart.isAfter(normalizedEnd)
            ? normalizedStart
            : normalizedEnd,
        preset: GstDatePreset.custom,
      ),
    );
    await load();
  }

  Future<void> setSearchQuery(String query) async {
    state = state.copyWith(
      filter: state.filter.copyWith(searchQuery: query),
    );
    await load();
  }

  Future<void> setTab(GstReportType tab) async {
    state = state.copyWith(filter: state.filter.copyWith(tab: tab));
  }

  static GstReportFilter _defaultFilter() {
    final dates = _datesForPreset(GstDatePreset.thisMonth, DateTime.now());
    return GstReportFilter(
      startDate: dates.$1,
      endDate: dates.$2,
    );
  }

  static (DateTime, DateTime) _datesForPreset(
    GstDatePreset preset,
    DateTime now,
  ) {
    final today = DateTime(now.year, now.month, now.day);
    switch (preset) {
      case GstDatePreset.thisMonth:
        return (DateTime(today.year, today.month, 1), today);
      case GstDatePreset.lastMonth:
        final start = DateTime(today.year, today.month - 1, 1);
        return (start, DateTime(today.year, today.month, 0));
      case GstDatePreset.currentFinancialYear:
        final year = today.month >= 4 ? today.year : today.year - 1;
        return (DateTime(year, 4, 1), today);
      case GstDatePreset.custom:
        return (today, today);
    }
  }
}

final reportSettingsProvider = Provider<AppSettings>(
  (ref) => ref.watch(settingsProvider),
);
