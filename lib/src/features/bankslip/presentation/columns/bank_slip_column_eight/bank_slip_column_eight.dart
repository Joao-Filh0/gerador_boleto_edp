import 'package:pdf/widgets.dart' as pw;

import './components/box_address_widget.dart';
import '../../widgets/bank_slip_widgets/bank_slip_widget.dart';
import 'components/default_column_widget.dart';

class BankSlipColumnEight {
  static pw.Widget init(BankSlipWidget bankSlip) {
    return pw.SizedBox(
      height: 85.0,
      child: pw.Row(
          mainAxisAlignment: pw.MainAxisAlignment.start,
          crossAxisAlignment: pw.CrossAxisAlignment.start,
          children: [
            pw.Expanded(
              flex: 2,
              child: BoxAddressWidget.init(bankSlip),
            ),
            pw.SizedBox(width: 10.0),
            pw.Expanded(
              flex: 1,
              child: DefaultColumnWidget.init(
                bankSlip,
                fistText: 'Valor total a pagar',
                fistValue: 'R\$ 200,00',
                lastText: 'Consumo mes / kwh',
                lastValue: '264',
              ),
            ),
            pw.SizedBox(width: 10.0),
            pw.Expanded(
              flex: 1,
              child: DefaultColumnWidget.init(
                bankSlip,
                fistText: 'Número da instalaçao',
                fistValue: '00000',
                lastText: 'Data de Vencimento',
                lastValue: '24/08/2023',
              ),
            ),
          ]),
    );
  }
}
