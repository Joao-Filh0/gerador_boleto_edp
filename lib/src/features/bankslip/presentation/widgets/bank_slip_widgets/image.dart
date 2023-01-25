part of 'bank_slip_widget.dart';

class _Image {
  pw.Widget image(String image, {double size = 60.0, PdfColor? color}) {
    return pw.SvgImage(
        alignment: pw.Alignment.bottomCenter,
        svg: image,
        width: size,
        height: size,
        colorFilter: color);
  }
}
