import 'package:pdf/widgets.dart' as pw;

import '../../widgets/bank_slip_widgets/bank_slip_widget.dart';
import 'components/consumer_place_widget.dart';

class BankSlipColumnNine {
  static pw.Widget init(BankSlipWidget bankSlip) {
    return pw.SizedBox(
      height: 75.0,
      child: pw.Row(
          mainAxisAlignment: pw.MainAxisAlignment.start,
          crossAxisAlignment: pw.CrossAxisAlignment.start,
          children: [
            pw.Expanded(
              flex: 2,
              child: ConsumerPlace.init(bankSlip),
            ),
            pw.SizedBox(width: 10.0),
            pw.Expanded(
              flex: 1,
              child: pw.Padding(
                padding: const pw.EdgeInsets.only(top: 15.0),
                child: pw.Column(children: [
                  bankSlip.pdfText('Atendimento EDP',
                      size: PdfTextConstSizes.large),
                  bankSlip.pdfText('0800 721 0123',
                      size: PdfTextConstSizes.large),
                  bankSlip.pdfText('edp.com.br', size: PdfTextConstSizes.large)
                ]),
              ),
            ),
            pw.SizedBox(width: 10.0),
            pw.Expanded(
              flex: 1,
              child: pw.Padding(
                  padding: const pw.EdgeInsets.only(top: 15.0),
                  child: bankSlip.boxLayout(
                    title: 'Conta do Mes',
                    color: BoxLayoutTitleColor.secondary,
                    body: pw.Padding(
                      padding: const pw.EdgeInsets.only(top: 4.0),
                      child: pw.SizedBox(
                          height: 18.0,
                          child: pw.Align(
                            alignment: pw.Alignment.topCenter,
                            child: bankSlip.pdfText('12/08/2023',
                                size: PdfTextConstSizes.big),
                          )),
                    ),
                  )),
            ),
          ]),
    );
  }
}
