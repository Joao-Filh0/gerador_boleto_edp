import 'package:pdf/widgets.dart' as pw;

import '../../widgets/bank_slip_widgets/bank_slip_widget.dart';

class BankSlipColumnFive {
  static pw.Widget init(BankSlipWidget bankSlip) {
    return bankSlip.boxLayout(
      width: double.infinity,
      height: 130.0,
      title: pw.Center(
          child: bankSlip.pdfText('Histórico de consumo (kWh)',
              size: PdfTextConstSizes.medium)),
      body: pw.Column(children: []),
    );
  }
}
