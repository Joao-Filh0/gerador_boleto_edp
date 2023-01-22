part of 'bank_slip_widget.dart';

class _Image {
  pw.Widget image(String image, {double size = 60.0}) {
    return pw.SvgImage(svg: image, width: size, height: size);
  }
}
