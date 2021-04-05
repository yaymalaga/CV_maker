import 'package:flutter/material.dart';
import 'package:printing/printing.dart';

import 'pdf/generate_pdf.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CV Maker',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        body: PdfPreview(
          maxPageWidth: 700,
          build: (format) => generatePdf(),
        ),
      ),
    );
  }
}
