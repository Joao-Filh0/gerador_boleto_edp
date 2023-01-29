import 'package:pdf/widgets.dart' as pw;

import '../../../widgets/bank_slip_widgets/bank_slip_widget.dart';

class PayByBarcodeWidget {
  static pw.Widget init(BankSlipWidget bankSlip, {required String text}) {
    return bankSlip.boxLayout(
        color: BoxLayoutTitleColor.secondary,
        title: 'Campo Editavel',
        body: pw
            .Column(crossAxisAlignment: pw.CrossAxisAlignment.start, children: [
          pw.Row(crossAxisAlignment: pw.CrossAxisAlignment.start, children: [
            pw.Column(
                crossAxisAlignment: pw.CrossAxisAlignment.start,
                children: [
                  bankSlip.pdfText('Campo Editavel'),
                  bankSlip.pdfText('Campo Editavel'),
                  bankSlip.pdfText('Campo Editavel / GUARULHOS - SP')
                ]),
            pw.Spacer(),
            pw.SizedBox(
                width: 90,
                height: 20,
                child: bankSlip.boxLayout(
                    title: 'N da instalaçao',
                    body:
                        pw.Center(child: bankSlip.pdfText('Campo editavel')))),
            pw.SizedBox(
                width: 90,
                height: 20,
                child: bankSlip.boxLayout(
                    title: 'Vencimento',
                    body:
                        pw.Center(child: bankSlip.pdfText('Campo editavel')))),
            pw.SizedBox(
                width: 90,
                height: 20,
                child: bankSlip.boxLayout(
                    title: 'Total a pagar',
                    body:
                        pw.Center(child: bankSlip.pdfText('Campo editavel')))),
          ]),
          pw.Spacer(),
          pw.Row(mainAxisAlignment: pw.MainAxisAlignment.center, children: [
            pw.Spacer(),
            pw.Column(children: [
              bankSlip.pdfText('17898121789812178981217898121789812',
                  size: PdfTextConstSizes.big),
              pw.BarcodeWidget(
                width: 330,
                height: 35,
                barcode: pw.Barcode.code128(),
                data: '17898121789812178981217898121789812',
                drawText: false,
              ),
            ]),
            pw.Spacer(),
            pw.Column(
                crossAxisAlignment: pw.CrossAxisAlignment.center,
                children: [
                  bankSlip.pdfText(
                      'indentificador para\n Débito Automático: \n 190038055041',
                      size: PdfTextConstSizes.small),
                  pw.SizedBox(height: 5.0),
                  bankSlip.logoDark()
                ])
          ])
        ]));
  }
}
