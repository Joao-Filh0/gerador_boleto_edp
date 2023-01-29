import 'package:gerador_boleto_edp/src/features/bankslip/presentation/columns/bank_slip_column_fourteen/components/qr_code_widget.dart';
import 'package:pdf/widgets.dart' as pw;

import '../../widgets/bank_slip_widgets/bank_slip_widget.dart';
import 'components/pay_by_bar_code.dart';

class BankSlipColumnFourteen {
  static pw.Widget init(BankSlipWidget bankSlip, {required String image}) {
    return pw.SizedBox(
        height: 134.0,
        child:
            pw.Row(crossAxisAlignment: pw.CrossAxisAlignment.start, children: [
          QrCodeWidget.init(bankSlip, image: image, text: ''),
          pw.SizedBox(width: 20.0),
          pw.Expanded(
            flex: 3,
            child: PayByBarcodeWidget.init(bankSlip, text: ''),
          ),
        ]));
  }
}
