part of 'bank_slip_widget.dart';

class _Title {
  pw.Widget title(String text,
      {double height = 10.0,
      double width = 100,
      BoxLayoutTitleColor color = BoxLayoutTitleColor.primary}) {
    return pw.Container(
      height: height,
      width: width,
      child: pw.Center(
          child: _PdfText().pdfText(text, size: PdfTextConstSizes.small)),
      color: _getTitleColor(color),
    );
  }

  PdfColor _getTitleColor(BoxLayoutTitleColor color) {
    switch (color) {
      case BoxLayoutTitleColor.primary:
        return PdfColors.blue400;
      case BoxLayoutTitleColor.secondary:
        return PdfColors.grey400;
    }
  }
}
