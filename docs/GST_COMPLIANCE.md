# InvoKhata GST compliance notes

Updated: 22 September 2026

This document records the compliance assumptions used by the GST Reports
module. It is deliberately conservative: a local invoice or purchase record
is not treated as proof that a return value is legally reportable or that input
tax credit is eligible.

## Sources reviewed

- GSTN Returns user guide: <https://tutorial.gst.gov.in/userguide/returns/index.htm>
- GSTN Form GSTR-3B guide: <https://tutorial.gst.gov.in/userguide/returns/GSTR3B.htm>
- CBIC GST site and FAQ: <https://cbic-gst.gov.in/> and
  <https://cbic-gst.gov.in/faq.html>
- CBIC rate resource: <https://cbic-gst.gov.in/gst-goods-services-rates.html>
- Authorized IRP FAQ and release notes:
  <https://einvoice6.gst.gov.in/content/faq>

The GSTN GSTR-1, GSTR-1A, GSTR-2B, GSTR-9 and GSTR-9C links were not exposed
as stable, directly fetchable pages by the official user-guide index during this
review. The exporter therefore uses the published table conventions but marks
portal-schema confirmation as a required review step. CBIC's public FAQ also
states that it is educational guidance and not legally binding.

## Rules represented in the data model

The application keeps document-level and line-level values needed for review:

- supplier/business GSTIN, customer/supplier GSTIN and state, place of supply;
- document number and date, document type, reverse-charge flag and e-invoice IRN;
- HSN/SAC, quantity, taxable value, GST rate, CGST, SGST, IGST and cess;
- purchase-side source document data separately from GSTR-2B/eligible-ITC data.

GST rates are not inferred from a product name. They must come from the HSN/SAC
classification and the applicable rate notification. The rate master must be
reviewed when notifications change; a generic list of slabs is not sufficient.

## Return/reporting principles

### GSTR-1

The report maps taxable sales toward the familiar GSTR-1 groups: B2B, exports,
B2C large/small, credit/debit-note groups, HSN/SAC summary and documents issued.
This app currently has no credit/debit-note or amendment transaction model, so
those sections are exported empty and a validation warning is shown rather than
inventing amendments.

Document-level discounts are not allocated back to invoice lines by the current
POS model. A return export is blocked when that makes the document grand total
fail the taxable-value-plus-tax reconciliation; this is intentional until the
discount treatment (including the Section 15(3) conditions) is captured on the
document.

For an unregistered inter-State consumer invoice, the B2C-large threshold and
other classification rules must remain aligned with the GSTN schema and the
tax period's notification. The app's compliance profile uses ₹100,000 as the
current review threshold, but the exporter warns that this must be verified
against the portal template before filing. A report range spanning multiple tax
periods is rejected for GSTR-1 JSON export.

### GSTR-3B

GSTN describes Form GSTR-3B as a summary return. Its portal values are
auto-populated from suppliers' GSTR-1/GSTR-1A and the system-generated GSTR-2B.
The report follows the high-level groups for outward supplies (3.1), inter-State
unregistered/composition/UIN supplies (3.2), ITC (4), exempt/nil/non-GST
inward supplies (5) and interest/late fee (5.1).

The app never converts a local purchase ledger into 4A eligible ITC. The local
purchase tax is shown as **input tax captured** and must be reconciled against
GSTR-2B, reverse-charge treatment, blocked-credit rules, business use and other
conditions before a taxpayer enters 3B.

The GSTN guide states that normal and casual taxpayers must file 3B for every
applicable period, including a no-business period; due dates can be extended by
notification. Due-date calculation is therefore not hard-coded as a legal
deadline in this offline report.

### E-invoice

The authorized IRP content reviewed states that an IRP validates key fields and
returns an IRN and QR code. It lists supplier/buyer identity, GSTIN where
applicable, addresses, quantity and total tax among mandatory schema examples.
The same portal currently displays a 30-day reporting restriction for taxpayers
with AATO ₹10 crore or more from 1 April 2025, and a 40% rate-master release from
21 September 2025. These are surfaced as compliance notes, not silently applied
to every business or HSN.

The local app can validate a document before export but does not connect to an
IRP, generate an IRN, verify a signed QR code, or claim that a PDF is an
e-invoice. Those fields remain explicit and optional until an integration is
implemented.

## Validation policy

- **Error:** missing/invalid business GSTIN for a taxable GST JSON export;
  invalid non-empty party GSTIN; missing document number/date; non-finite or
  negative monetary values; missing HSN/SAC on taxable lines; tax component
  mismatch; intra-State document carrying IGST or inter-State document carrying
  CGST/SGST; missing place of supply.
- **Warning:** missing purchase-side supplier snapshot, unrepresented
  credit/debit notes or amendments, local purchase tax not reconciled to 2B,
  multi-period review ranges, and portal-template/version confirmation.

Warnings can be reviewed for PDF/XLSX exports. GSTR-1/GSTR-3B JSON export is
blocked when an error exists.

This module is a reporting and validation aid, not tax advice. A tax
professional should confirm the return before filing it on the GST Portal.