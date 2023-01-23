import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;

import '../../../widgets/bank_slip_widgets/bank_slip_widget.dart';

class ClocksRowImagesParams {
  final String imageOne;
  final String imageTwo;
  final String imageThree;

  ClocksRowImagesParams(
      {required this.imageOne,
      required this.imageTwo,
      required this.imageThree});
}

class ClocksRowWidget {
  static pw.Widget init(BankSlipWidget bankSlip,
      {required ClocksRowImagesParams params}) {
    pw.Widget columnClock(String image) {
      return pw.Column(
          crossAxisAlignment: pw.CrossAxisAlignment.center,
          mainAxisAlignment: pw.MainAxisAlignment.center,
          children: [
            bankSlip.image(image, size: 40.0),
            pw.Container(
                height: 10,
                width: 10,
                decoration: pw.BoxDecoration(
                  border: pw.Border.all(
                    color: PdfColors.black,
                    width: 0.5,
                  ),
                ))
          ]);
    }

    return pw.Padding(
        padding: const pw.EdgeInsets.only(left: 20.0, bottom: 11.0),
        child: pw.Row(children: [
          columnClock(params.imageOne),
          columnClock(params.imageTwo),
          columnClock(params.imageThree),
          columnClock(params.imageTwo),
          columnClock(params.imageThree),
        ]));
  }
}
