import 'dart:typed_data';

import 'package:flutter/services.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart';

import 'layout_pdf.dart';

Future<Uint8List> generatePdf() async {
  final pdf = Document();

  pdf.addPage(
    Page(
      margin: const EdgeInsets.all(0),
      pageFormat: PdfPageFormat.a4,
      theme: ThemeData.withFont(
        base: Font.ttf(await rootBundle.load('assets/Quicksand_Regular.ttf')),
        bold: Font.ttf(await rootBundle.load('assets/Quicksand_Bold.ttf')),
      ),
      build: (context) {
        return LayoutPDF();
      },
    ),
  );

  return pdf.save();
}
