import 'package:pdf/widgets.dart' as pw;

import '../../widgets/bank_slip_widgets/bank_slip_widget.dart';

class BankSlipColumnSix {
  static pw.Widget init(BankSlipWidget bankSlip) {
    return bankSlip.boxLayout(
      width: double.infinity,
      height: 98.0,
      title: pw.Center(
          child: bankSlip.pdfText('Reaviso de Débito',
              size: PdfTextConstSizes.medium)),
      body: pw.Column(children: []),
    );
  }
}
