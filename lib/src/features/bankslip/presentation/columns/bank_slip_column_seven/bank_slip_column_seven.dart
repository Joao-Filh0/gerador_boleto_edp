import 'package:pdf/widgets.dart' as pw;

import '../../widgets/bank_slip_widgets/bank_slip_widget.dart';

class BankSlipColumnSeven {
  static pw.Widget init(BankSlipWidget bankSlip) {
    return bankSlip.boxLayout(
      width: double.infinity,
      height: 50.0,
      color: BoxLayoutTitleColor.secondary,
      title: 'Informacoes Importantes',
      body: pw.Padding(
          padding: const pw.EdgeInsets.only(top: 10.0, left: 10.0),
          child: bankSlip.pdfText(
              'Informaçoes Suplementares, Condiçoes gerais de fornecimento, Tarifas, '
              'Contribuiçao de Iluminaça,Seviço Prestados,Impostos e apuraçao dos indicadores de continuidade '
              'e limites aplicáveis se encontram a disposiçao para  consulta através do telefone 0800 721 0123, '
              'em nossas Lojas Comerciais e no site da EDP: www.edponline.com.br.\n\n'
              'O atraso no pagamento da fatura indicará multa de 2% juros moratórios de 1% ao mes e atualizaçao monetária '
              'que serao incluídos na fatura do próximo mes.',
              fontWeight: pw.FontWeight.bold)),
    );
  }
}
