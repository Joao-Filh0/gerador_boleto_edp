import 'package:pdf/widgets.dart' as pw;

import '../../../widgets/bank_slip_widgets/bank_slip_widget.dart';

class TariffFlagWidget {
  static pw.Widget init(BankSlipWidget bankSlip) {
    return pw.Padding(
        padding: const pw.EdgeInsets.only(top: 5.0, left: 5.0),
        child: pw.Column(
            crossAxisAlignment: pw.CrossAxisAlignment.start,
            children: [
              bankSlip.pdfText(
                  'Bandeira Tarifária na Data de Faturamento: VERDE',
                  fontWeight: pw.FontWeight.bold),
              bankSlip.pdfText(
                  'º dias Fat. Bandeira VERDE : 29 dias (14/12/2022 a 11/01/2023)]\n'
                  'informaçoes sobre o sistema de bandeiras tarifárias estao disponiveis no site da ANEEL (www.aneel.gov.br'),
              pw.Spacer(),
              pw.Center(
                  child: bankSlip.pdfText(
                      'Reservado ao Fisco : S34t.38TR.UR55.8TDW.R465.SS53.7FPC.Q3X4',
                      fontWeight: pw.FontWeight.bold,
                      size: PdfTextConstSizes.large)),
            ]));
  }
}
