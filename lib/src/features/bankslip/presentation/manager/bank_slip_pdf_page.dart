import 'package:flutter/services.dart';
import 'package:gerador_boleto_edp/src/features/bankslip/presentation/columns/bank_slip_column_eight/bank_slip_column_eight.dart';
import 'package:gerador_boleto_edp/src/features/bankslip/presentation/columns/bank_slip_column_header/bank_slip_column_header.dart';
import 'package:gerador_boleto_edp/src/features/bankslip/presentation/columns/bank_slip_column_two/bank_slip_column_two.dart';
import 'package:gerador_boleto_edp/src/features/bankslip/presentation/columns/bank_slip_column_two/components/clocks_row_widget.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:printing/printing.dart';

import '../columns/bank_slip_column_eleven/bank_slip_column_eleven.dart';
import '../columns/bank_slip_column_five/bank_slip_column_five.dart';
import '../columns/bank_slip_column_four/bank_slip_column_four.dart';
import '../columns/bank_slip_column_fourteen/bank_slip_column_fourteen.dart';
import '../columns/bank_slip_column_nine/bank_slip_column_nine.dart';
import '../columns/bank_slip_column_one/bank_slip_column_one.dart';
import '../columns/bank_slip_column_seven/bank_slip_column_seven.dart';
import '../columns/bank_slip_column_six/bank_slip_column_six.dart';
import '../columns/bank_slip_column_ten/bank_slip_column_ten.dart';
import '../columns/bank_slip_column_thirteen/bank_slip_column_thirteen.dart';
import '../columns/bank_slip_column_three/bank_slip_column_three.dart';
import '../columns/bank_slip_column_twelve/bank_slip_column_twelve.dart';
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
    final facebook = await rootBundle.loadString('assets/facebook.svg');
    final instagram = await rootBundle.loadString('assets/instagram.svg');
    final twitter = await rootBundle.loadString('assets/twitte.svg');
    final youtube = await rootBundle.loadString('assets/youtube.svg');
    final linkedin = await rootBundle.loadString('assets/linkedin.svg');

    final imageOne = await rootBundle.loadString('assets/image_clock_1.svg');
    final imageTwo = await rootBundle.loadString('assets/image_clock_2.svg');
    final imageThree = await rootBundle.loadString('assets/image_clock_3.svg');

    final dateImage = await rootBundle.loadString('assets/date_input.svg');
    final pix = await rootBundle.loadString('assets/pix.svg');

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
          BankSlipColumnHeader.init(bankSlip),
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
          BankSlipColumnThree.init(bankSlip),
          BankSlipColumnFour.init(
            bankSlip,
            dateImage: dateImage,
          ),
          BankSlipColumnFive.init(
            bankSlip,
            column1: List<String>.generate(7, (index) => '11/22'),
            column2: List<String>.generate(7, (index) => '187'),
            column3: List<String>.generate(7, (index) => 'R\$383,32'),
            column4: List<String>.generate(7, (index) => '11/22'),
            column5: List<String>.generate(7, (index) => '152'),
            column6: List<String>.generate(7, (index) => 'R\$423,12'),
          ),
          BankSlipColumnSix.init(bankSlip),
          BankSlipColumnSeven.init(bankSlip),
          pw.SizedBox(height: 30.0),
          BankSlipColumnHeader.init(bankSlip),
          BankSlipColumnEight.init(bankSlip),
          BankSlipColumnNine.init(bankSlip),
          BankSlipColumnTen.init(bankSlip),
          BankSlipColumnEleven.init(bankSlip),
          BankSlipColumnTwelve.init(bankSlip),
          BankSlipColumnThirteen.init(bankSlip),
          BankSlipColumnFourteen.init(bankSlip, image: pix),
        ],
      ),
    );
    return doc.save();
  }
}
