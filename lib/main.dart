import 'dart:typed_data';

import 'package:cv_maker/pdf/header_pdf.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:printing/printing.dart';

import 'pdf/side_panel.dart';

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

Future<Uint8List> generatePdf() async {
  final pdf = pw.Document();

  pdf.addPage(
    pw.Page(
      pageFormat: PdfPageFormat.a4,
      build: (context) {
        return pw.Column(
          children: [
            pw.Text("HEY!"),
            HeaderPDF(title: "title"),
            pw.Row(
              children: [
                pw.Expanded(
                  child: pw.Container(
                    padding: const pw.EdgeInsets.fromLTRB(36, 18, 18, 42),
                    child: SidePanelPDF(),
                  ),
                ),
                pw.Expanded(
                  flex: 2,
                  child: pw.Container(
                    padding: const pw.EdgeInsets.fromLTRB(18, 18, 36, 42),
                    child: pw.Container(),
                  ),
                )
              ],
            ),
            pw.Text("HEY!"),
          ],
        );
      },
    ),
  );

  return pdf.save();
}
