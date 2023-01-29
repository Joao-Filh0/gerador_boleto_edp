import 'package:pdf/widgets.dart' as pw;

import '../../widgets/bank_slip_widgets/bank_slip_widget.dart';

class BankSlipColumnTen {
  static pw.Widget init(BankSlipWidget bankSlip) {
    return pw.SizedBox(
        height: 100.0,
        child: pw.Row(children: [
          pw.Expanded(
            flex: 3,
            child: bankSlip.boxLayout(
              color: BoxLayoutTitleColor.secondary,
              title: 'Bandeira Tarifárias',
              body: pw.Container(),
            ),
          ),
          pw.SizedBox(width: 10.0),
          pw.Expanded(
            flex: 2,
            child: bankSlip.boxLayout(
              color: BoxLayoutTitleColor.secondary,
              title: 'Periodo de Faturamento',
              body: pw.Column(children: [
                pw.Row(
                    crossAxisAlignment: pw.CrossAxisAlignment.start,
                    children: [
                      bankSlip.pdfText('Emissao',
                          size: PdfTextConstSizes.small),
                      pw.Spacer(),
                      bankSlip.pdfText('Campo Editavel',
                          size: PdfTextConstSizes.small)
                    ]),
                pw.Row(
                    crossAxisAlignment: pw.CrossAxisAlignment.start,
                    children: [
                      bankSlip.pdfText('Emissao',
                          size: PdfTextConstSizes.small),
                      pw.Spacer(),
                      bankSlip.pdfText('Campo Editavel',
                          size: PdfTextConstSizes.small)
                    ]),
                pw.Row(
                    crossAxisAlignment: pw.CrossAxisAlignment.start,
                    children: [
                      bankSlip.pdfText('Emissao',
                          size: PdfTextConstSizes.small),
                      pw.Spacer(),
                      bankSlip.pdfText('Campo Editavel',
                          size: PdfTextConstSizes.small)
                    ]),
                pw.Row(
                    crossAxisAlignment: pw.CrossAxisAlignment.start,
                    children: [
                      bankSlip.pdfText('Emissao',
                          size: PdfTextConstSizes.small),
                      pw.Spacer(),
                      bankSlip.pdfText('Campo Editavel',
                          size: PdfTextConstSizes.small)
                    ]),
                pw.Row(
                    crossAxisAlignment: pw.CrossAxisAlignment.start,
                    children: [
                      bankSlip.title(
                        'PREV PRÓXIMA LEITURA',
                      ),
                      pw.Spacer(),
                      bankSlip.pdfText('Campo Editavel',
                          size: PdfTextConstSizes.small)
                    ]),
                bankSlip.title('Aviso',
                    width: 300, color: BoxLayoutTitleColor.secondary),
              ]),
            ),
          ),
        ]));
  }
}
