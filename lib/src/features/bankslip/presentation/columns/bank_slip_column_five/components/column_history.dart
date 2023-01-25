import 'package:pdf/widgets.dart' as pw;

import '../../../widgets/bank_slip_widgets/bank_slip_widget.dart';

class ColumnHistory {
  static pw.Widget init(BankSlipWidget bankSlip,
      {required String title, required List<String> body}) {
    return pw.Column(children: [
      bankSlip.pdfText(title),
      pw.SizedBox(height: 5.0),
      ...body
          .map((e) => bankSlip.pdfText(e, size: PdfTextConstSizes.small))
          .toList()
    ]);
  }
}
