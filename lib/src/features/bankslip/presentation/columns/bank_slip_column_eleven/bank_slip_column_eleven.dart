import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;

import '../../widgets/bank_slip_widgets/bank_slip_widget.dart';

class BankSlipColumnEleven {
  static pw.Widget init(BankSlipWidget bankSlip) {
    return pw.Container(
        color: PdfColors.grey200,
        height: 60.0,
        child: pw.Row(children: [
          pw.Expanded(
            flex: 3,
            child: bankSlip.boxLayout(
                color: BoxLayoutTitleColor.secondary,
                title: 'DEscriçao de Consumo',
                body: pw.Container()),
          ),
          pw.SizedBox(width: 10.0),
          pw.Spacer(flex: 2),
        ]));
  }
}
