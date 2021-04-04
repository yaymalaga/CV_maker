import 'dart:typed_data';

import 'package:cv_maker/pdf/layout_pdf.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:printing/printing.dart';

import 'pdf/generate_pdf.dart';
import 'pdf/side_panel/side_panel.dart';
import 'pdf/common/stepper_tile.dart';

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
        body: PdfPreview(
          maxPageWidth: 700,
          build: (format) => generatePdf(),
        ), //Home(),
      ),
    );
  }
}
