import 'package:flutter/material.dart';

class TransportDetailsForm extends StatelessWidget {
  final TextEditingController transporterNameController;
  final TextEditingController vehicleNumberController;
  final TextEditingController placeOfDispatchController;
  final TextEditingController destinationController;
  final TextEditingController distanceController;

  const TransportDetailsForm({
    super.key,
    required this.transporterNameController,
    required this.vehicleNumberController,
    required this.placeOfDispatchController,
    required this.destinationController,
    required this.distanceController,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextField(
          controller: transporterNameController,
          decoration: const InputDecoration(labelText: 'Transporter Name'),
        ),
        TextField(
          controller: vehicleNumberController,
          decoration: const InputDecoration(labelText: 'Vehicle Number'),
        ),
        TextField(
          controller: placeOfDispatchController,
          decoration: const InputDecoration(labelText: 'Place of Dispatch'),
        ),
        TextField(
          controller: destinationController,
          decoration: const InputDecoration(labelText: 'Destination'),
        ),
        TextField(
          controller: distanceController,
          keyboardType: TextInputType.number,
          decoration: const InputDecoration(labelText: 'Distance (in km)'),
        ),
      ],
    );
  }
}