import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;

import '../../../widgets/bank_slip_widgets/bank_slip_widget.dart';

class SocialMediaWidgetParams {
  final String facebook;
  final String instagram;
  final String twitter;
  final String youtube;
  final String linkedin;

  const SocialMediaWidgetParams({
    required this.facebook,
    required this.instagram,
    required this.twitter,
    required this.youtube,
    required this.linkedin,
  });
}

class SocialMediaWidget {
  static pw.Widget init(BankSlipWidget bankSlip,
      {required SocialMediaWidgetParams params}) {
    pw.Widget logo({required String image, required String text}) {
      return pw.Column(children: [
        bankSlip.image(image, size: 15.0, color: PdfColors.purple900),
        bankSlip.pdfText(text)
      ]);
    }

    return pw.Padding(
        padding: const pw.EdgeInsets.only(left: 80.0),
        child: pw.Row(
            mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
            children: [
              bankSlip.pdfText('Acesse:',
                  size: PdfTextConstSizes.large,
                  fontWeight: pw.FontWeight.bold),
              logo(image: params.facebook, text: 'facebook'),
              logo(image: params.instagram, text: 'instagram'),
              logo(image: params.twitter, text: 'twitter'),
              logo(image: params.youtube, text: 'youtube'),
              logo(image: params.linkedin, text: 'linkedin'),
              pw.SizedBox(width: 80.0),
            ]));
  }
}
