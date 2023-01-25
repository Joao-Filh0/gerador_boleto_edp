import 'package:pdf/widgets.dart' as pw;

import '../../../widgets/bank_slip_widgets/bank_slip_widget.dart';

class RowTextInformation {
  static pw.Widget init(
    BankSlipWidget bankSlip,
  ) {
    return pw.Padding(
      padding: const pw.EdgeInsets.only(top: 5.0),
      child: pw.Column(
          crossAxisAlignment: pw.CrossAxisAlignment.center,
          mainAxisAlignment: pw.MainAxisAlignment.start,
          children: [
            pw.Row(mainAxisAlignment: pw.MainAxisAlignment.center, children: [
              bankSlip.pdfText('Atendimento EDP'),
              pw.SizedBox(width: 5.0),
              bankSlip.pdfText('0800 721 0123'),
              pw.SizedBox(width: 5.0),
            ]),
            bankSlip.pdfText(
                'Ligaçao gratuita para solicitaçoes de serviços e informaçoes.'
                'ouvidoria EDP: 0800 721 0201(de segunda a sexta, exceto feriado, das 8h00 ás 18h00)'
                'Ligaçao gratuita de telefone fixos e móveis) ARSESP - Agencia Reguladora de Saneamento e Energia do estado de Sao Paulo:'
                '0800 727 0167 (Ligaçao gratuita de telefone fixos e móveis) ANEEL - Agencia Nacional de Energia Elétrica: Tel 167 '
                '(Ligaçao gratuita de telefone fixos e móveis)'
                'Conselho de Consumidores da EDP Sao Paulo Distribuiçao de energia : www.edp.com.br/distribuicao-sp/sobre-a-distribuicao/'
                'conselho-de-consumidores/sobre-o-conselho-de-consumidores-sp',
                size: PdfTextConstSizes.small),
          ]),
    );
  }
}
