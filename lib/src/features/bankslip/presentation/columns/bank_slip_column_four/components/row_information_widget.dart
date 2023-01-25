import 'package:pdf/widgets.dart' as pw;

import '../../../widgets/bank_slip_widgets/bank_slip_widget.dart';

class RowInformationWidget {
  static pw.Widget init(
    BankSlipWidget bankSlip, {
    required String dateImage,
  }) {
    return pw.Row(
        mainAxisAlignment: pw.MainAxisAlignment.start,
        crossAxisAlignment: pw.CrossAxisAlignment.start,
        children: [
          bankSlip.pdfText('Reintegrado ao Serviço Postal em:',
              size: PdfTextConstSizes.small),
          bankSlip.image(dateImage, size: 60.0),
          bankSlip.pdfText('Rubrica do responsável: ',
              size: PdfTextConstSizes.small),
          pw.SizedBox(width: 200.0, child: pw.Divider(thickness: 0.4)),
          bankSlip.pdfText('Matrícula: ', size: PdfTextConstSizes.small),
          pw.SizedBox(width: 70.0, child: pw.Divider(thickness: 0.4)),
        ]);
  }
}
