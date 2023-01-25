import 'package:flutter/services.dart';
import 'package:gerador_boleto_edp/src/features/bankslip/presentation/columns/bank_slip_column_header/bank_slip_column_header.dart';
import 'package:gerador_boleto_edp/src/features/bankslip/presentation/columns/bank_slip_column_two/bank_slip_column_two.dart';
import 'package:gerador_boleto_edp/src/features/bankslip/presentation/columns/bank_slip_column_two/components/clocks_row_widget.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:printing/printing.dart';

import '../columns/bank_slip_column_five/bank_slip_column_five.dart';
import '../columns/bank_slip_column_four/bank_slip_column_four.dart';
import '../columns/bank_slip_column_one/bank_slip_column_one.dart';
import '../columns/bank_slip_column_seven/bank_slip_column_seven.dart';
import '../columns/bank_slip_column_six/bank_slip_column_six.dart';
import '../columns/bank_slip_column_three/bank_slip_column_three.dart';
import '../columns/bank_slip_column_two/components/social_media_widget.dart';
import '../widgets/bank_slip_widgets/bank_slip_widget.dart';

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
    final logo = await rootBundle.loadString('assets/logo1.svg');

    final facebook = await rootBundle.loadString('assets/facebook.svg');
    final instagram = await rootBundle.loadString('assets/instagram.svg');
    final twitter = await rootBundle.loadString('assets/twitte.svg');
    final youtube = await rootBundle.loadString('assets/youtube.svg');
    final linkedin = await rootBundle.loadString('assets/linkedin.svg');

    final imageOne = await rootBundle.loadString('assets/image_clock_1.svg');
    final imageTwo = await rootBundle.loadString('assets/image_clock_1.svg');
    final imageThree = await rootBundle.loadString('assets/image_clock_1.svg');
    final dateImage = await rootBundle.loadString('assets/date_input.svg');

    // Add page to the PDF
    doc.addPage(
      pw.MultiPage(
        pageTheme: _buildTheme(
          pageFormat,
          await PdfGoogleFonts.robotoRegular(),
          await PdfGoogleFonts.robotoBold(),
          await PdfGoogleFonts.robotoItalic(),
        ),
        mainAxisAlignment: pw.MainAxisAlignment.start,
        crossAxisAlignment: pw.CrossAxisAlignment.center,
        build: (context) => [
          BankSlipColumnHeader.init(bankSlip, logo: logo),
          BankSlipColumnOne.init(bankSlip),
          BankSlipColumnTwo.init(bankSlip,
              logos: SocialMediaWidgetParams(
                  facebook: facebook,
                  instagram: instagram,
                  twitter: twitter,
                  youtube: youtube,
                  linkedin: linkedin),
              clocks: ClocksRowImagesParams(
                imageOne: imageOne,
                imageTwo: imageTwo,
                imageThree: imageThree,
              ),
              dateImage: dateImage),
          BankSlipColumnThree.init(bankSlip, image: logo),
          BankSlipColumnFour.init(bankSlip),
          BankSlipColumnFive.init(bankSlip),
          BankSlipColumnSix.init(bankSlip),
          BankSlipColumnSeven.init(bankSlip),
        ],
      ),
    );
    return doc.save();
  }
}
