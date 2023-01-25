import 'package:pdf/widgets.dart' as pw;

import '../../../widgets/bank_slip_widgets/bank_slip_widget.dart';

class ColumnTitleDescription {
  static pw.Widget init(BankSlipWidget bankSlip,
      {required String title, required String description}) {
    return pw.Column(children: [
      bankSlip.pdfText(title, fontWeight: pw.FontWeight.bold),
      bankSlip.pdfText(description),
    ]);
  }
}
