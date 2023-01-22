import 'package:pdf/widgets.dart' as pw;

import '../../widgets/bank_slip_widgets/bank_slip_widget.dart';
import 'components/box_address_widget.dart';
import 'components/box_dates_widget.dart';
import 'components/box_text_widget.dart';

class BankSlipColumnOne {
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
              child: BoxDatesWidget.init(bankSlip),
            ),
            pw.SizedBox(width: 10.0),
            pw.Expanded(
                flex: 1,
                child: pw.Column(children: [
                  BoxTextWidget.init(bankSlip,
                      text: 'Número da instalaçao', description: '00000000'),
                  BoxTextWidget.init(bankSlip,
                      text: '00/00/0000', description: 'Capo editavél'),
                  BoxTextWidget.init(bankSlip,
                      text: 'Número da instalaçao', description: 'AAAAAAA/0000')
                ])),
          ]),
    );
  }
}
