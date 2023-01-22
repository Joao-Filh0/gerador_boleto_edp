import 'package:pdf/widgets.dart' as pw;

import '../../../widgets/bank_slip_widgets/bank_slip_widget.dart';

class BoxDatesWidget {
  static pw.Widget init(BankSlipWidget bankSlip) {
    return bankSlip.boxLayout(
        title: pw.Center(
          child: bankSlip.pdfText('Datas'),
        ),
        body: pw.Padding(
            padding:
                const pw.EdgeInsets.symmetric(horizontal: 0.0, vertical: 5.0),
            child: pw.SizedBox(
                height: 35,
                child: pw.Column(children: [
                  pw.Row(
                      crossAxisAlignment: pw.CrossAxisAlignment.start,
                      children: [
                        bankSlip.pdfText('Emissao '),
                        pw.Spacer(),
                        pw.Expanded(
                            child: pw.Column(
                                children: [bankSlip.pdfText('10/11/2023')]))
                      ]),
                  pw.SizedBox(height: 20.0),
                  pw.BarcodeWidget(
                    width: 80,
                    height: 30,
                    barcode: pw.Barcode.code128(),
                    data: '1789812',
                    drawText: true,
                  ),
                ]))));
  }
}
