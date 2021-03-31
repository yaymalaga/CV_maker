import 'package:cv_maker/pdf/side_panel_pdf.dart';
import 'package:cv_maker/pdf/stepper_item_pdf.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;

import 'header_pdf.dart';
import 'main_panel_pdf.dart';

const PdfColor green = PdfColor.fromInt(0xff9ce5d0);
const PdfColor lightGreen = PdfColor.fromInt(0xffcdf1e7);
const sep = 120.0;

class LayoutPDF extends pw.StatelessWidget {
  LayoutPDF();

  @override
  pw.Widget build(pw.Context context) {
    return pw.Column(
      children: [
        HeaderPDF(title: "title"),
        pw.Row(
          crossAxisAlignment: pw.CrossAxisAlignment.start,
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
                child: MainPanelPDF(),
              ),
            )
          ],
        ),
      ],
    );
  }
}
