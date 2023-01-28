import 'package:pdf/widgets.dart' as pw;

import '../../../widgets/bank_slip_widgets/bank_slip_widget.dart';

class ColumnWithTestDescriptionWidget {
  static pw.Widget init(BankSlipWidget bankSlip,
      {required String text, required String description}) {
    return pw.SizedBox(
      height: 28.0,
      child: bankSlip.boxLayout(
        title: text,
        body: pw.Padding(
          padding: const pw.EdgeInsets.only(top: 4.0),
          child: pw.Center(
            child: bankSlip.pdfText(description, size: PdfTextConstSizes.big),
          ),
        ),
      ),
    );
  }
}
