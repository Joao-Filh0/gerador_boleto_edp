import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;

import '../../../../../config/colors.dart';
import '../../widgets/bank_slip_widgets/bank_slip_widget.dart';

class BankSlipColumnThree {
  static pw.Widget init(BankSlipWidget bankSlip) {
    return pw.Column(
      crossAxisAlignment: pw.CrossAxisAlignment.start,
      children: [
        pw.Padding(
          padding: const pw.EdgeInsets.only(bottom: 6.0),
          child: pw.Container(
            width: double.infinity,
            height: 150,
            color: PdfColor.fromHex(EdpColors.primaryDarkString),
            child: pw.Padding(
              padding: const pw.EdgeInsets.symmetric(
                  vertical: 10.0, horizontal: 35.0),
              child: pw.Column(
                  crossAxisAlignment: pw.CrossAxisAlignment.start,
                  children: [
                    pw.Row(
                        mainAxisAlignment: pw.MainAxisAlignment.end,
                        children: [bankSlip.logoLight()]),
                    bankSlip.pdfText('Nós temos uma nova marca',
                        size: PdfTextConstSizes.extraBig,
                        color: PdfTextColor.primary),
                    pw.SizedBox(height: 10.0),
                    bankSlip.pdfText(
                        'Nós escolhemos mudar hoje o amanha. E nossa nova identidade reflete nosso compromisso com  '
                        'a sustentabilidade, a inovaçao e a responsabilidade social.',
                        size: PdfTextConstSizes.big,
                        color: PdfTextColor.secondary),
                    pw.SizedBox(height: 6.0),
                    bankSlip.pdfText(
                        'E a sua conta de energia também esta com as novas cores.',
                        size: PdfTextConstSizes.big,
                        color: PdfTextColor.primary),
                    bankSlip.pdfText('Acesse edp.com.br e saiba mais',
                        size: PdfTextConstSizes.big,
                        color: PdfTextColor.secondary),
                  ]),
            ),
          ),
        ),
        pw.Padding(
            padding: const pw.EdgeInsets.only(left: 10.0, bottom: 5.0),
            child: pw.Column(
                crossAxisAlignment: pw.CrossAxisAlignment.start,
                children: [
                  bankSlip.pdfText('Remetente'),
                  bankSlip.pdfText('EDP Sao paulo Distribuicao de Energia S.A.',
                      fontWeight: pw.FontWeight.bold),
                  bankSlip.pdfText(
                      'Rua Wemer Von Siemens, 11 Lapa de Baixo CXPST 44191-0 Conj 22 Bloco A Sala 1 CEP: 05.069-900 - Sao Paulo - SP')
                ]))
      ],
    );
  }
}
