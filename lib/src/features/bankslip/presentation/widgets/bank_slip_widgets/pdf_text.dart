part of 'bank_slip_widget.dart';

enum PdfTextConstSizes { large, medium, small, big, extraBig }

enum PdfTextColor { primary, secondary, normal }

class _PdfText {
  pw.Widget pdfText(String text,
      {PdfTextConstSizes size = PdfTextConstSizes.medium,
      pw.FontWeight fontWeight = pw.FontWeight.normal,
      PdfTextColor color = PdfTextColor.normal}) {
    return pw.Text(text,
        style: pw.TextStyle(
            fontSize: _getTextSize(size),
            fontWeight: fontWeight,
            color: _getColor(color)));
  }

  double _getTextSize(PdfTextConstSizes size) {
    switch (size) {
      case PdfTextConstSizes.large:
        return 10.0;
      case PdfTextConstSizes.medium:
        return 8.0;
      case PdfTextConstSizes.small:
        return 7.0;
      case PdfTextConstSizes.extraBig:
        return 20.0;
      case PdfTextConstSizes.big:
        return 13.0;
    }
  }

  PdfColor _getColor(PdfTextColor color) {
    switch (color) {
      case PdfTextColor.primary:
        return PdfColors.blue;
      case PdfTextColor.secondary:
        return PdfColors.white;
      case PdfTextColor.normal:
        return PdfColors.black;
    }
  }
}
