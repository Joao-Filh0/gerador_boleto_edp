import 'package:pdf/widgets.dart' as pw;

import '../../widgets/bank_slip_widgets/bank_slip_widget.dart';

class BankSlipColumnFourteen {
  static pw.Widget init(BankSlipWidget bankSlip) {
    return pw.SizedBox(
        height: 134.0,
        child: pw.Row(children: [
          pw.Expanded(
            flex: 3,
            child: bankSlip.boxLayout(
                color: BoxLayoutTitleColor.secondary,
                title: 'Campo Editavel',
                body: pw.Container()),
          ),
        ]));
  }
}
