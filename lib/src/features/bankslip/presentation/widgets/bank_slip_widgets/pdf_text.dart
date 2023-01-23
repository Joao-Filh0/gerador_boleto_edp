part of 'bank_slip_widget.dart';

enum PdfTextConstSizes { large, medium, small }

class _PdfText {
  pw.Widget pdfText(String text,
      {PdfTextConstSizes size = PdfTextConstSizes.medium,
      pw.FontWeight fontWeight = pw.FontWeight.normal}) {
    return pw.Text(text,
        style: pw.TextStyle(
          fontSize: _getTextSize(size),
          fontWeight: fontWeight,
        ));
  }

  double _getTextSize(PdfTextConstSizes size) {
    switch (size) {
      case PdfTextConstSizes.large:
        return 10.0;
      case PdfTextConstSizes.medium:
        return 8.0;
      case PdfTextConstSizes.small:
        return 5.0;
    }
  }
}
