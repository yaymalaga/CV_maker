import 'dart:typed_data';

import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;

import 'layout_pdf.dart';

Future<Uint8List> generatePdf() async {
  final pdf = pw.Document();

  pdf.addPage(
    pw.Page(
      margin: const pw.EdgeInsets.all(0),
      pageFormat: PdfPageFormat.a4,
      build: (context) {
        return LayoutPDF();
      },
    ),
  );

  return pdf.save();
}
