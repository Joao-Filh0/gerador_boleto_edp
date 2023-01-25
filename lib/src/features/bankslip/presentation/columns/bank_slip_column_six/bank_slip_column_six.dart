import 'package:gerador_boleto_edp/src/features/bankslip/presentation/columns/bank_slip_column_six/components/column_title_description.dart';
import 'package:pdf/widgets.dart' as pw;

import '../../widgets/bank_slip_widgets/bank_slip_widget.dart';

class BankSlipColumnSix {
  static pw.Widget init(BankSlipWidget bankSlip) {
    return bankSlip.boxLayout(
      width: double.infinity,
      height: 80.0,
      title: pw.Center(
          child: bankSlip.pdfText('Reaviso de Débito',
              size: PdfTextConstSizes.medium)),
      body: pw.Padding(
          padding: const pw.EdgeInsets.only(top: 5.0),
          child: pw.Column(children: [
            bankSlip.pdfText(
                'A(s) fatura(s) est(ao) em débito(s). A EDP pode suspender o fornecimento a partir de (data editavél), se o(s) '
                'débitos nao for(em) pago(s). O straso acarreta PROTESTO e NEGATIVAÇAO. Decorridos dois ciclos de faturamento sem '
                'o pagamento, o contrato pode ser encerrado. Caso tenha pago, desconsidere este aviso que nao altera, contudo os anteriores.'
                'se dia (data editavel) for uma sexta-feira, véspera de feriado ou fim de semana, considere o primeiro dia útil seguinte.'),
            pw.SizedBox(height: 3.0),
            pw.Row(
                mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
                children: [
                  bankSlip.pdfText('Acordo', size: PdfTextConstSizes.large),
                  ColumnTitleDescription.init(bankSlip,
                      title: 'Mes/Ano/Pc', description: '26/12/2022'),
                  ColumnTitleDescription.init(bankSlip,
                      title: 'Vencimento', description: '26/12/2022'),
                  ColumnTitleDescription.init(bankSlip,
                      title: 'Valores R\$', description: '5.000'),
                  pw.SizedBox(width: 300)
                ])
          ])),
    );
  }
}
