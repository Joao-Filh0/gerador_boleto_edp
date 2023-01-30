import 'package:pdf/widgets.dart' as pw;

import '../../../widgets/bank_slip_widgets/bank_slip_widget.dart';

class TextDescriptionWidget {
  static pw.Widget init(BankSlipWidget bankSlip,
      {required String text, required String description}) {
    return pw.Padding(
        padding: const pw.EdgeInsets.only(top: 5.0, left: 5.0),
        child: pw.Column(
            crossAxisAlignment: pw.CrossAxisAlignment.center,
            children: [
              bankSlip.pdfText(text, fontWeight: pw.FontWeight.bold),
              bankSlip.pdfText(description),
            ]));
  }
}
