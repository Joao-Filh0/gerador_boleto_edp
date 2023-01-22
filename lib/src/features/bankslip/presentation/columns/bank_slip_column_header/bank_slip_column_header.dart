import 'package:pdf/widgets.dart' as pw;

import '../../widgets/bank_slip_widgets/bank_slip_widget.dart';
import 'components/header_information.dart';

class BankSlipColumnHeader {
  static pw.Widget init(BankSlipWidget bankSlip, {required String logo}) {
    return pw.Padding(
        padding: const pw.EdgeInsets.only(bottom: 20.0, top: 20.0),
        child:
            pw.Row(crossAxisAlignment: pw.CrossAxisAlignment.start, children: [
          pw.Column(
            mainAxisAlignment: pw.MainAxisAlignment.center,
            children: [pw.SizedBox(height: 7.0), bankSlip.image(logo)],
          ),
          pw.SizedBox(
            width: 10,
          ),
          pw.SizedBox(
            child: HeaderInformation.init(
              bankSlip,
              title: 'EDP Sao Paulo Distribuicao de Energia B. A',
              description: 'EDP Sao Paulo Distribuicao de Energia B. A',
            ),
            width: 130,
          ),
          pw.SizedBox(
            width: 30,
          ),
          pw.SizedBox(
            child: HeaderInformation.init(bankSlip,
                description: 'EDP Sao Paulo Distribuicao de Energia B. A'),
            width: 100,
          ),
        ]));
  }
}
