import 'package:flutter/services.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:printing/printing.dart';

import '../../widgets/bank_slip_widgets/bank_slip_widget.dart';

class BankSlipPdfPage {
  Future<Uint8List> run(PdfPageFormat pageFormat) async {
    return _buildPdf(pageFormat);
  }

  pw.PageTheme _buildTheme(
      PdfPageFormat pageFormat, pw.Font base, pw.Font bold, pw.Font italic) {
    return pw.PageTheme(
        margin: const pw.EdgeInsets.all(10.0),
        pageFormat: pageFormat,
        theme: pw.ThemeData.withFont(
          base: base,
          bold: bold,
          italic: italic,
        ));
  }

  Future<Uint8List> _buildPdf(PdfPageFormat pageFormat) async {
    final doc = pw.Document();
    final bankSlip = BankSlipWidget();
    final clock = await rootBundle.loadString('assets/clock.svg');

    // Add page to the PDF
    doc.addPage(
      pw.MultiPage(
        pageTheme: _buildTheme(
          pageFormat,
          await PdfGoogleFonts.robotoRegular(),
          await PdfGoogleFonts.robotoBold(),
          await PdfGoogleFonts.robotoItalic(),
        ),
        build: (context) => [
          pw.Row(children: [
            pw.SvgImage(
              svg: clock,
              width: 100,
              height: 100,
            ),
            pw.SvgImage(
              svg: clock,
              width: 100,
              height: 100,
            ),
            pw.SvgImage(
              svg: clock,
              width: 100,
              height: 100,
            ),
          ]),
          pw.Row(children: [
            pw.Expanded(
              flex: 2,
              child: bankSlip.boxLayout(
                  color: BoxLayoutTitleColor.secondary,
                  title: pw.Center(
                      child: pw.Text('Cliente / Endereço de Entrega',
                          style: pw.TextStyle(fontSize: 10.0))),
                  body: pw.Padding(
                      padding: const pw.EdgeInsets.symmetric(
                          horizontal: 20.0, vertical: 5.0),
                      child: pw.Column(
                          crossAxisAlignment: pw.CrossAxisAlignment.start,
                          children: [pw.Text('Rua : ')]))),
            ),
            pw.SizedBox(width: 10.0),
            pw.Expanded(
              flex: 1,
              child: bankSlip.boxLayout(
                  title: pw.Center(
                      child: pw.Text('Datas',
                          style: pw.TextStyle(fontSize: 10.0))),
                  body: pw.Padding(
                      padding: const pw.EdgeInsets.symmetric(
                          horizontal: 20.0, vertical: 5.0),
                      child: pw.Column(
                          crossAxisAlignment: pw.CrossAxisAlignment.start,
                          children: [pw.Text('Rua : ')]))),
            ),
            pw.SizedBox(width: 10.0),
            pw.Expanded(
                flex: 1,
                child: bankSlip.boxLayout(
                    title: pw.Center(
                        child: pw.Text('Numero de instalaçao',
                            style: pw.TextStyle(fontSize: 10.0))),
                    body: pw.Padding(
                        padding: const pw.EdgeInsets.symmetric(
                            horizontal: 20.0, vertical: 5.0),
                        child: pw.Column(children: [pw.Text('Rua : ')]))))
          ])
          // pw.SizedBox(height: 100),
          // pw.Row(children: [
          //   bankSlip.inputDate(),
          //   bankSlip.inputDate(),
          //   bankSlip.inputDate(isShowVertical: false)
          // ])
        ],
      ),
    );
    return doc.save();
  }
}
