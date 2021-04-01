import 'package:pdf/widgets.dart' as pw;

import 'colors.dart';
import 'skill_bar_pdf.dart';
import 'stepper_item_pdf.dart';

class MainPanelPDF extends pw.StatelessWidget {
  MainPanelPDF();

  @override
  pw.Widget build(pw.Context context) {
    return pw.Column(
      crossAxisAlignment: pw.CrossAxisAlignment.start,
      children: [
        pw.Text(
          "Experience".toUpperCase(),
          style: pw.Theme.of(context).header2,
        ),
        pw.SizedBox(height: 6),
        StepperItemPDF(),
        StepperItemPDF(isLast: true),
        pw.SizedBox(height: 30),
        pw.Row(
          mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
          children: [
            SkillsSectionPDF(),
            SkillsSectionPDF(),
          ],
        ),
        pw.SizedBox(height: 30),
        pw.Text("Extra".toUpperCase(), style: pw.Theme.of(context).header2),
        pw.SizedBox(height: 6),
        pw.Row(
          children: [
            pw.Container(
              width: 6,
              height: 6,
              decoration: const pw.BoxDecoration(
                color: blue,
                shape: pw.BoxShape.circle,
              ),
            ),
            pw.SizedBox(width: 10),
            pw.Text(
              "Lorem",
              style: pw.Theme.of(context).paragraphStyle,
            ),
          ],
        ),
        pw.SizedBox(height: 6),
        pw.Row(
          children: [
            pw.Container(
              width: 6,
              height: 6,
              decoration: const pw.BoxDecoration(
                color: blue,
                shape: pw.BoxShape.circle,
              ),
            ),
            pw.SizedBox(width: 10),
            pw.Text(
              "Impsum",
              style: pw.Theme.of(context).paragraphStyle,
            ),
          ],
        ),
      ],
    );
  }
}
