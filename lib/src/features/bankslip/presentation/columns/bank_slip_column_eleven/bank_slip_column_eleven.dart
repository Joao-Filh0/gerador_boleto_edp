import 'package:gerador_boleto_edp/src/features/bankslip/presentation/columns/bank_slip_column_eleven/components/text_description_widget.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;

import '../../widgets/bank_slip_widgets/bank_slip_widget.dart';

class BankSlipColumnEleven {
  static pw.Widget init(BankSlipWidget bankSlip) {
    return pw.Container(
      color: PdfColors.grey200,
      height: 60.0,
      width: double.infinity,
      child: bankSlip.boxLayout(
          color: BoxLayoutTitleColor.secondary,
          title: 'Descriçao de Consumo',
          body: pw.Padding(
              padding: const pw.EdgeInsets.only(left: 5.0, right: 5.0),
              child: pw.Row(
                  mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
                  children: [
                    TextDescriptionWidget.init(bankSlip,
                        text: 'Descriçao', description: 'Ativo'),
                    TextDescriptionWidget.init(bankSlip,
                        text: 'Nr do Medidor', description: 'campo editavel'),
                    TextDescriptionWidget.init(bankSlip,
                        text: 'Leitura Anterior',
                        description: 'campo editavel'),
                    TextDescriptionWidget.init(bankSlip,
                        text: 'Leitura Atual', description: 'campo editavel'),
                    TextDescriptionWidget.init(bankSlip,
                        text: 'Const. Mult.', description: '1.00000'),
                    TextDescriptionWidget.init(bankSlip,
                        text: 'Qtde kwh mes', description: 'campo editavel'),
                  ]))),
    );
  }
}
