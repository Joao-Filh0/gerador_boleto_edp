import 'package:pdf/widgets.dart' as pw;

import '../../widgets/bank_slip_widgets/bank_slip_widget.dart';

class BankSlipColumnFour {
  static pw.Widget init(BankSlipWidget bankSlip) {
    return bankSlip.boxLayout(
      width: double.infinity,
      height: 80.0,
      color: BoxLayoutTitleColor.secondary,
      title: pw.Center(
          child: bankSlip.pdfText('Para Uso do correio',
              size: PdfTextConstSizes.medium)),
      body: pw.Column(children: []),
    );
  }
}
