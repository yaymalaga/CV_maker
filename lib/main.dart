import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:printing/printing.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
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
        body: ConstrainedBox(
          constraints: const BoxConstraints(
            maxWidth: 760, // ?¿?¿? A4 width: 210 -> 1mm = 6.2992dp
          ),
          child: Container(
            color: Colors.white,
            child: PdfPreview(
              build: (format) => generatePdf(),
            ), //Home(),
          ),
        ),
      ),
    );
  }
}

Future<Uint8List> generatePdf() async {
  final pdf = pw.Document();

  pdf.addPage(
    pw.Page(
      pageFormat: PdfPageFormat.a4,
      build: (context) {
        return pw.Center(
          child: pw.Text("Hello World"),
        );
      },
    ),
  );

  return pdf.save();
}
