import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;

import '../../widgets/bank_slip_widgets/bank_slip_widget.dart';

class BankSlipColumnThree {
  static pw.Widget init(BankSlipWidget bankSlip, {required String image}) {
    return pw.Column(
      crossAxisAlignment: pw.CrossAxisAlignment.start,
      children: [
        pw.Padding(
            padding: const pw.EdgeInsets.only(bottom: 6.0),
            child: pw.Container(
                width: double.infinity,
                height: 160,
                color: PdfColor.fromHex('002E42'),
                child: pw.Column(children: [
                  pw.Row(
                      mainAxisAlignment: pw.MainAxisAlignment.end,
                      children: [bankSlip.image(image)]),
                  bankSlip.pdfText('Nós temos uma nova Marca',
                      size: PdfTextConstSizes.extraBig,
                      color: PdfTextColor.primary),
                  bankSlip.pdfText(
                      'Nós escolhemos mudar hoje o amanha. E nossa nova identidade reflete nosso compromisso com  '
                      'a sustentabilidade, a inovaçao e a responsabilidade social.',
                      size: PdfTextConstSizes.big,
                      color: PdfTextColor.secondary),
                  bankSlip.pdfText(
                      'E a sua conta de energia também esta com as novas cores.',
                      size: PdfTextConstSizes.big,
                      color: PdfTextColor.primary),
                  bankSlip.pdfText('Acesse edp.com.br e saiba mais',
                      size: PdfTextConstSizes.big,
                      color: PdfTextColor.secondary),
                ]))),
        pw.Padding(
            padding: const pw.EdgeInsets.only(left: 10.0, bottom: 2.0),
            child: pw.Column(
                crossAxisAlignment: pw.CrossAxisAlignment.start,
                children: [
                  bankSlip.pdfText('Roblablabla'),
                  bankSlip.pdfText('ED SAO Paulo'),
                  bankSlip.pdfText('Rua Weimer')
                ]))
      ],
    );
  }
}
