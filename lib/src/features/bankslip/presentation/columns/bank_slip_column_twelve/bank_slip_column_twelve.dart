import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;

import '../../widgets/bank_slip_widgets/bank_slip_widget.dart';

class BankSlipColumnTwelve {
  static pw.Widget init(BankSlipWidget bankSlip) {
    return pw.Container(
        color: PdfColors.grey200,
        height: 160.0,
        child: pw.Row(children: [
          pw.Expanded(
            flex: 3,
            child: bankSlip.boxLayout(
                color: BoxLayoutTitleColor.secondary,
                title: 'Descriçao de Consumo',
                body: pw.Container()),
          ),
        ]));
  }
}
