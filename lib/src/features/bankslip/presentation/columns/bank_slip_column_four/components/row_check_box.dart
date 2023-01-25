import 'package:pdf/widgets.dart' as pw;

import '../../../widgets/bank_slip_widgets/bank_slip_widget.dart';

class RowCheckBox {
  static pw.Widget init(BankSlipWidget bankSlip,
      {required String text, double size = 20.0}) {
    return pw.SizedBox(
        width: size,
        child: pw.Row(children: [
          bankSlip.checkBox(size: 8.0),
          pw.SizedBox(width: 2.0),
          bankSlip.pdfText(text, size: PdfTextConstSizes.small),
          pw.Spacer(),
        ]));
  }
}
