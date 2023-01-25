import 'package:pdf/widgets.dart' as pw;

import '../../widgets/bank_slip_widgets/bank_slip_widget.dart';
import 'components/column_history.dart';

class BankSlipColumnFive {
  static pw.Widget init(
    BankSlipWidget bankSlip, {
    required List<String> column1,
    required List<String> column2,
    required List<String> column3,
    required List<String> column4,
    required List<String> column5,
    required List<String> column6,
  }) {
    return bankSlip.boxLayout(
      width: double.infinity,
      height: 90.0,
      title: pw.Center(
          child: bankSlip.pdfText('Histórico de consumo (kWh)',
              size: PdfTextConstSizes.medium)),
      body: pw.Padding(
          padding: const pw.EdgeInsets.only(left: 20.0),
          child: pw.Row(
              mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
              children: [
                ColumnHistory.init(bankSlip, title: 'Mes/Ano', body: column1),
                ColumnHistory.init(bankSlip,
                    title: 'Consumo Ativo', body: column2),
                ColumnHistory.init(bankSlip,
                    title: 'Valor Total', body: column3),
                ColumnHistory.init(bankSlip, title: 'Mes/Ano', body: column4),
                ColumnHistory.init(bankSlip,
                    title: 'Consumo Ativo', body: column5),
                ColumnHistory.init(bankSlip,
                    title: 'Valor Total', body: column6),
              ])),
    );
  }
}
