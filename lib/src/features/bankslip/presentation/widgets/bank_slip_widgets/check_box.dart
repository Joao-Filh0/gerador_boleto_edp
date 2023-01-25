part of 'bank_slip_widget.dart';

class _CheckBox {
  pw.Widget checkBox({double size = 10.0}) {
    return pw.Container(
        height: size,
        width: size,
        decoration: pw.BoxDecoration(
          border: pw.Border.all(
            color: PdfColors.black,
            width: 0.5,
          ),
        ));
  }
}
