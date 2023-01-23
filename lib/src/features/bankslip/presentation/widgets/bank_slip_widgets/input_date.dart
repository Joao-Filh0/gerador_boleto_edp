part of 'bank_slip_widget.dart';

class _InputDate {
  pw.Widget inputDate({bool isShowVertical = true}) {
    return pw.Padding(
        padding: const pw.EdgeInsets.only(left: 9.0),
        child: pw.SizedBox(
            width: 20,
            child: pw.Row(
                mainAxisAlignment: pw.MainAxisAlignment.start,
                crossAxisAlignment: pw.CrossAxisAlignment.end,
                children: [
                  pw.SizedBox(
                    width: 15,
                    child: pw.Divider(),
                  ),
                  pw.SizedBox(width: 0.01),
                  pw.Padding(
                      padding: const pw.EdgeInsets.only(bottom: 9.0),
                      child: pw.Transform.rotate(
                        angle: -math.pi / 8,
                        child: pw.SizedBox(
                          height: 5.0,
                          child: pw.VerticalDivider(
                            color: isShowVertical ? null : PdfColors.white,
                          ),
                        ),
                      ))
                ])));
  }
}
