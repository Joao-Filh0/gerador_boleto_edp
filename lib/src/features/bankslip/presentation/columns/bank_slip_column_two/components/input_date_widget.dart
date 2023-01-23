import 'package:pdf/widgets.dart' as pw;

import '../../../widgets/bank_slip_widgets/bank_slip_widget.dart';

class InputDateWidget {
  //date_input
  static pw.Widget init(BankSlipWidget bankSlip, {required String dateImage}) {
    return pw.Row(children: [
      bankSlip.pdfText('DATA DA LEITURA'),
      pw.SizedBox(width: 1.0),
      bankSlip.image(dateImage, size: 60.0),
    ]);
  }
}
