import 'package:pdf/widgets.dart' as pw;

import '../../../widgets/bank_slip_widgets/bank_slip_widget.dart';

class BillingPeriodWidget {
  static pw.Widget init(BankSlipWidget bankSlip) {
    return bankSlip.boxLayout(
      color: BoxLayoutTitleColor.secondary,
      title: 'Periodo de Faturamento',
      body: pw.Column(children: [
        pw.Row(crossAxisAlignment: pw.CrossAxisAlignment.start, children: [
          bankSlip.pdfText('Emissao', size: PdfTextConstSizes.small),
          pw.Spacer(),
          bankSlip.pdfText('Campo Editavel', size: PdfTextConstSizes.small)
        ]),
        pw.Row(crossAxisAlignment: pw.CrossAxisAlignment.start, children: [
          bankSlip.pdfText('Leitura Aterior', size: PdfTextConstSizes.small),
          pw.Spacer(),
          bankSlip.pdfText('Campo Editavel', size: PdfTextConstSizes.small)
        ]),
        pw.Row(crossAxisAlignment: pw.CrossAxisAlignment.start, children: [
          bankSlip.pdfText('Leitura Atual', size: PdfTextConstSizes.small),
          pw.Spacer(),
          bankSlip.pdfText('Campo Editavel', size: PdfTextConstSizes.small)
        ]),
        pw.Row(crossAxisAlignment: pw.CrossAxisAlignment.start, children: [
          bankSlip.pdfText('N Dias de Faturamento',
              size: PdfTextConstSizes.small),
          pw.Spacer(),
          bankSlip.pdfText('Campo Editavel', size: PdfTextConstSizes.small)
        ]),
        pw.Row(crossAxisAlignment: pw.CrossAxisAlignment.start, children: [
          bankSlip.title(
            'PREV PRÓXIMA LEITURA',
          ),
          pw.Spacer(),
          bankSlip.pdfText('Campo Editavel', size: PdfTextConstSizes.small)
        ]),
        bankSlip.title('Aviso',
            width: 300, color: BoxLayoutTitleColor.secondary),
      ]),
    );
  }
}
