part of 'bank_slip_widget.dart';

enum BoxLayoutTitleColor { primary, secondary }

class _BoxLayout {
  pw.Widget boxLayout(
      {required String title,
      required pw.Widget body,
      double height = 300,
      double width = 300,
      BoxLayoutTitleColor color = BoxLayoutTitleColor.primary}) {
    return pw.Container(
        height: height,
        width: width,
        child: pw.Column(
            crossAxisAlignment: pw.CrossAxisAlignment.start,
            children: [
              pw.Container(
                child: pw.Padding(
                    padding: const pw.EdgeInsets.all(2.0),
                    child: pw.Center(
                        child: _PdfText()
                            .pdfText(title, size: PdfTextConstSizes.large))),
                color: _getTitleColor(color),
              ),
              pw.Expanded(child: body)
            ]));
  }

  PdfColor _getTitleColor(BoxLayoutTitleColor color) {
    switch (color) {
      case BoxLayoutTitleColor.primary:
        return PdfColors.blue;
      case BoxLayoutTitleColor.secondary:
        return PdfColors.grey;
    }
  }
}
