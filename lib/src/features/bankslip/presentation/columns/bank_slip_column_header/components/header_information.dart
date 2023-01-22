import 'package:pdf/widgets.dart' as pw;

import '../../../widgets/bank_slip_widgets/bank_slip_widget.dart';

class HeaderInformation {
  static pw.Widget init(BankSlipWidget bankSlip,
      {String title = '', String description = ''}) {
    return pw.Expanded(
        child: pw.Column(
            crossAxisAlignment: pw.CrossAxisAlignment.start,
            children: [
          bankSlip.pdfText(title, fontWeight: pw.FontWeight.bold),
          bankSlip.pdfText(description),
        ]));
  }
}
