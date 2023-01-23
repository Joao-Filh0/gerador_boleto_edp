import 'package:pdf/widgets.dart' as pw;

import '../../widgets/bank_slip_widgets/bank_slip_widget.dart';
import 'components/clocks_row_widget.dart';
import 'components/input_date_widget.dart';
import 'components/social_media_widget.dart';

class BankSlipColumnTwo {
  static pw.Widget init(BankSlipWidget bankSlip,
      {required SocialMediaWidgetParams logos,
      required ClocksRowImagesParams clocks,
      required String dateImage}) {
    return bankSlip.boxLayout(
        width: double.infinity,
        height: 105.0,
        color: BoxLayoutTitleColor.secondary,
        title: pw.Center(
            child: bankSlip.pdfText('Autoleitura',
                size: PdfTextConstSizes.medium)),
        body: pw.Padding(
          padding: const pw.EdgeInsets.only(top: 2.0),
          child: pw.Column(children: [
            pw.Row(crossAxisAlignment: pw.CrossAxisAlignment.start, children: [
              pw.Column(children: [
                pw.Padding(
                  padding: const pw.EdgeInsets.only(left: 5.0),
                  child: bankSlip.pdfText(
                    'Autoleitura sabdkakadkadhbfdkufdfsiufffsafrsffgdfggdddfdgdfgddfgddf\n\n'
                    'ddfgdffgdfgdfgdfgdfgdfgdfgdfgdfdfdvsffffsfsfdgddfdffgdfgdfdfbdfdfsffgff\n\n'
                    'fdfgdfbdsifdsbdsfidsbdsfghfjgyjghjtyjtyjtyytytrtyrtytrtyrtyrth\n\n',
                  ),
                ),
                InputDateWidget.init(bankSlip, dateImage: dateImage),
              ]),
              ClocksRowWidget.init(bankSlip, params: clocks),
            ]),
            SocialMediaWidget.init(bankSlip, params: logos)
          ]),
        ));
  }
}
