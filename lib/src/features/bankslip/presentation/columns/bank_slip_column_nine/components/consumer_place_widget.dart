import 'package:pdf/widgets.dart' as pw;

import '../../../widgets/bank_slip_widgets/bank_slip_widget.dart';

class ConsumerPlace {
  static pw.Widget init(BankSlipWidget bankSlip,
      {String title = '', String description = ''}) {
    return bankSlip.boxLayout(
        title: 'Local de Consumo',
        body: pw.Padding(
            padding: pw.EdgeInsets.all(5.0),
            child: pw.Column(
                crossAxisAlignment: pw.CrossAxisAlignment.start,
                mainAxisAlignment: pw.MainAxisAlignment.start,
                children: [
                  bankSlip.pdfText('Cambo Editavel'),
                  bankSlip.pdfText(
                      'CNPJ/CPF/CI:   Campo editavél          INSC ESTADUAL : '),
                  bankSlip.pdfText('Rua  Campo Editavel'),
                  bankSlip.pdfText('Cambo Editavel'),
                  bankSlip.pdfText('Cambo Editavel / GUARULHOS - SP')
                ])),
        color: BoxLayoutTitleColor.secondary);
  }
}
