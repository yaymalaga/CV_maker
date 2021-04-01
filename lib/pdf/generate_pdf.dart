import 'dart:typed_data';

import 'package:flutter/services.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart';

import 'colors.dart';
import 'layout_pdf.dart';

Future<Uint8List> generatePdf() async {
  final pdf = Document();
  final faBrands =
      Font.ttf(await rootBundle.load('assets/icons/fa_brands.ttf'));

  pdf.addPage(
    Page(
      margin: const EdgeInsets.all(0),
      pageFormat: PdfPageFormat.a4,
      theme: ThemeData.withFont(
        base: Font.ttf(
          await rootBundle.load('assets/fonts/Quicksand_Regular.ttf'),
        ),
        bold: Font.ttf(
          await rootBundle.load('assets/fonts/Quicksand_Bold.ttf'),
        ),
        icons: Font.ttf(await rootBundle.load('assets/icons/fa_solid.ttf')),
      ).copyWith(
        header1: TextStyle(
          color: blue,
          fontSize: 30,
          fontWeight: FontWeight.bold,
        ),
        header2: TextStyle(
          color: grey,
          fontSize: 12,
          fontWeight: FontWeight.bold,
        ),
        header3: TextStyle(
          color: blue,
          fontSize: 11,
          fontWeight: FontWeight.bold,
        ),
        header4: TextStyle(
          color: grey,
          fontSize: 10,
          fontWeight: FontWeight.bold,
        ),
        paragraphStyle: const TextStyle(
          color: grey,
          fontSize: 11,
          lineSpacing: 1,
        ),
      ),
      build: (context) {
        return LayoutPDF(faBrands: faBrands);
      },
    ),
  );

  return pdf.save();
}
