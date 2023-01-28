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
        height: 130.0,
        color: BoxLayoutTitleColor.secondary,
        title: 'Autoleitura',
        body: pw.Padding(
          padding: const pw.EdgeInsets.only(top: 2.0),
          child: pw.Column(children: [
            pw.Row(crossAxisAlignment: pw.CrossAxisAlignment.start, children: [
              pw.Column(children: [
                pw.Padding(
                  padding: const pw.EdgeInsets.only(left: 5.0, bottom: 10),
                  child: bankSlip.pdfText(
                    'Informe no Atendimento EDP. Antes, marque as Posi-\n\n'
                    'çoes dos ponteiros nos relógios, da direita para a es-\n\n'
                    'querda, ou anote os números registrados nos quadros\n\n\n'
                    'Lembre-se de anotar a datade leitura.',
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
