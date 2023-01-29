import 'package:pdf/widgets.dart' as pw;

import '../../../widgets/bank_slip_widgets/bank_slip_widget.dart';

class QrCodeWidget {
  static pw.Widget init(BankSlipWidget bankSlip,
      {required String text, required String image}) {
    return pw.Column(children: [
      pw.BarcodeWidget(
        width: 90,
        height: 90,
        barcode: pw.Barcode.qrCode(),
        data: text,
      ),
      pw.SizedBox(height: 7.0),
      bankSlip.pdfText('Pague com'),
      pw.SizedBox(height: 2.0),
      bankSlip.image(image),
    ]);
  }
}
