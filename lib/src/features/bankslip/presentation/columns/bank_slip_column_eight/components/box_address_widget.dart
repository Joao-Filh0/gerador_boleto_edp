import 'package:pdf/widgets.dart' as pw;

import '../../../widgets/bank_slip_widgets/bank_slip_widget.dart';

class BoxAddressWidget {
  static pw.Widget init(BankSlipWidget bankSlip) {
    return bankSlip.boxLayout(
      color: BoxLayoutTitleColor.secondary,
      title: 'Cliente / Endereço de Entrega',
      body: pw.Padding(
        padding: const pw.EdgeInsets.only(top: 5.0, left: 10.0),
        child: pw.SizedBox(
          height: 10,
          child: pw.Column(
              crossAxisAlignment: pw.CrossAxisAlignment.start,
              children: [
                bankSlip.pdfText('Campo editavél',
                    size: PdfTextConstSizes.small),
                pw.Row(children: [
                  bankSlip.pdfText('Rua : ', size: PdfTextConstSizes.small),
                  bankSlip.pdfText('Campo editavél  /  GUARULHOS - SP',
                      size: PdfTextConstSizes.small)
                ]),
                pw.Row(
                    crossAxisAlignment: pw.CrossAxisAlignment.start,
                    children: [
                      pw.Expanded(
                          child: pw.Column(
                              crossAxisAlignment: pw.CrossAxisAlignment.start,
                              mainAxisAlignment: pw.MainAxisAlignment.start,
                              children: [
                            bankSlip.pdfText('GRUPO/SUBGRUPO:  B -B1',
                                size: PdfTextConstSizes.small),
                            bankSlip.pdfText(
                                'Campo editavél  /  GUARULHOS - SP',
                                size: PdfTextConstSizes.small),
                            bankSlip.pdfText('TENSAO NORMAL: 240 /120 V',
                                size: PdfTextConstSizes.small),
                            bankSlip.pdfText('NR MEDIDOR: 000000',
                                size: PdfTextConstSizes.small)
                          ])),
                      pw.SizedBox(width: 10.0),
                      pw.Expanded(
                          child: pw.Column(
                              crossAxisAlignment: pw.CrossAxisAlignment.start,
                              mainAxisAlignment: pw.MainAxisAlignment.start,
                              children: [
                            bankSlip.pdfText('CLASSE/SUBCLASSE RECIDENCIAL',
                                size: PdfTextConstSizes.small),
                            bankSlip.pdfText('COD. FISCAL OPERAÇAO:  5258',
                                size: PdfTextConstSizes.small),
                            bankSlip.pdfText(
                                'ROTEIRO  DE LEITURA: B05GU1 1M00295',
                                size: PdfTextConstSizes.small)
                          ])),
                    ]),
              ]),
        ),
      ),
    );
  }
}
