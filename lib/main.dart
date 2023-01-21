import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gerador_boleto_edp/statements.dart';
import 'package:printing/printing.dart';

main(){
  runApp(MaterialApp(home: PdfApp(),));
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
      appBar: AppBar(title: Text("PDF")),
      body: PdfPreview(
        maxPageWidth: 700,
        build: (format) => generateInvoice(format,CustomData()),

      ),
    );
  }
}
