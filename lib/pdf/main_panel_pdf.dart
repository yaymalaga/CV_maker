import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;

import 'stepper_item_pdf.dart';

const PdfColor green = PdfColor.fromInt(0xff9ce5d0);
const PdfColor lightGreen = PdfColor.fromInt(0xffcdf1e7);
const sep = 120.0;

class MainPanelPDF extends pw.StatelessWidget {
  MainPanelPDF();

  @override
  pw.Widget build(pw.Context context) {
    return pw.Column(
      crossAxisAlignment: pw.CrossAxisAlignment.start,
      children: [
        pw.Text(
          "Experience".toUpperCase(),
          style: pw.Theme.of(context).defaultTextStyle.copyWith(
                fontWeight: pw.FontWeight.bold,
              ),
        ),
        pw.SizedBox(height: 6),
        StepperItemPDF(),
        StepperItemPDF(),
        pw.SizedBox(height: 30),
        pw.Text(
          "Extra".toUpperCase(),
          style: pw.Theme.of(context).defaultTextStyle.copyWith(
                fontWeight: pw.FontWeight.bold,
              ),
        ),
        pw.SizedBox(height: 6),
        pw.Row(
          children: [
            pw.Container(
              width: 8,
              height: 8,
              decoration: pw.BoxDecoration(
                color: green,
                shape: pw.BoxShape.circle,
              ),
            ),
            pw.SizedBox(width: 20.5),
            pw.Text("Lorem", style: pw.Theme.of(context).defaultTextStyle),
          ],
        ),
        pw.SizedBox(height: 6),
        pw.Row(
          children: [
            pw.Container(
              width: 8,
              height: 8,
              decoration: pw.BoxDecoration(
                color: green,
                shape: pw.BoxShape.circle,
              ),
            ),
            pw.SizedBox(width: 20.5),
            pw.Text(
              "Impsum",
              style: pw.Theme.of(context).defaultTextStyle,
            ),
          ],
        ),
      ],
    );
  }
}
