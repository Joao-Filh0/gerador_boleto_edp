import 'package:pdf/widgets.dart' as pw;

import '../../../widgets/bank_slip_widgets/bank_slip_widget.dart';

class BoxTextWidget {
  static pw.Widget init(BankSlipWidget bankSlip,
      {required String text, required String description}) {
    return pw.SizedBox(
        height: 28.0,
        child: bankSlip.boxLayout(
            title: pw.Center(child: bankSlip.pdfText(text)),
            body: pw.Center(child: bankSlip.pdfText(description))));
  }
}
