import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;

import '../../widgets/bank_slip_widgets/bank_slip_widget.dart';

class BankSlipColumnThree {
  static pw.Widget init(BankSlipWidget bankSlip) {
    return pw.Column(
      crossAxisAlignment: pw.CrossAxisAlignment.start,
      children: [
        pw.Padding(
            padding: const pw.EdgeInsets.only(bottom: 6.0),
            child: pw.Container(
              height: 160,
              color: PdfColor.fromHex('002E42'),
            )),
        pw.Padding(
            padding: const pw.EdgeInsets.only(left: 10.0, bottom: 2.0),
            child: pw.Column(
                crossAxisAlignment: pw.CrossAxisAlignment.start,
                children: [
                  bankSlip.pdfText('Roblablabla'),
                  bankSlip.pdfText('ED SAO Paulo'),
                  bankSlip.pdfText('Rua Weimer')
                ]))
      ],
    );
  }
}
