import 'package:flutter/material.dart';
import 'package:gerador_boleto_edp/src/features/bankslip/presentation/manager/bank_slip_pdf_page.dart';
import 'package:printing/printing.dart';

main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: PdfApp(),
  ));
}

class PdfApp extends StatefulWidget {
  const PdfApp({Key? key}) : super(key: key);

  @override
  State<PdfApp> createState() => _PdfAppState();
}

class _PdfAppState extends State<PdfApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PdfPreview(
        maxPageWidth: 700,
        build: (format) => BankSlipPdfPage().run(format),
      ),
    );
  }
}
