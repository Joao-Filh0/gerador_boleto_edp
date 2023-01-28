import 'package:pdf/widgets.dart' as pw;

import '../../widgets/bank_slip_widgets/bank_slip_widget.dart';

class BankSlipColumnTen {
  static pw.Widget init(BankSlipWidget bankSlip) {
    return pw.SizedBox(
        height: 80.0,
        child: pw.Row(children: [
          pw.Expanded(
            flex: 3,
            child: bankSlip.boxLayout(
              color: BoxLayoutTitleColor.secondary,
              title: 'Bandeira Tarifárias',
              body: pw.Container(),
            ),
          ),
          pw.SizedBox(width: 10.0),
          pw.Expanded(
            flex: 2,
            child: bankSlip.boxLayout(
              color: BoxLayoutTitleColor.secondary,
              title: 'Periodo de Faturamento',
              body: pw.Container(),
            ),
          ),
        ]));
  }
}
