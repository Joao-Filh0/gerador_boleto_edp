import 'package:gerador_boleto_edp/src/features/bankslip/presentation/columns/bank_slip_column_four/components/row_text_information.dart';
import 'package:pdf/widgets.dart' as pw;

import '../../widgets/bank_slip_widgets/bank_slip_widget.dart';
import 'components/row_check_box.dart';
import 'components/row_information_widget.dart';

class BankSlipColumnFour {
  static pw.Widget init(BankSlipWidget bankSlip, {required String dateImage}) {
    return bankSlip.boxLayout(
      width: double.infinity,
      height: 90.0,
      color: BoxLayoutTitleColor.secondary,
      title: 'Para Uso do correio',
      body: pw.Column(children: [
        pw.SizedBox(height: 1.0),
        RowInformationWidget.init(bankSlip, dateImage: dateImage),
        pw.Row(children: [
          RowCheckBox.init(bankSlip, text: '01- Mudou-se', size: 70.0),
          RowCheckBox.init(bankSlip,
              text: '02- Recusado/Desconhecido', size: 118.0),
          RowCheckBox.init(bankSlip, text: '03- Ausente', size: 60.0),
          RowCheckBox.init(bankSlip, text: '04- Nao procurado', size: 80.0),
          RowCheckBox.init(bankSlip,
              text: '05- Endereço Insuficiente/Nao existe Número indicado',
              size: 100.0),
        ]),
        RowTextInformation.init(bankSlip)
      ]),
    );
  }
}
