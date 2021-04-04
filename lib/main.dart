import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:printing/printing.dart';

import 'pdf/generate_pdf.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        textTheme: GoogleFonts.quicksandTextTheme(
          Theme.of(context).textTheme,
        ),
      ),
      home: Scaffold(
        backgroundColor: Colors.lightBlue.shade100,
        body: PdfPreview(
          maxPageWidth: 700,
          build: (format) => generatePdf(),
        ),
      ),
    );
  }
}
