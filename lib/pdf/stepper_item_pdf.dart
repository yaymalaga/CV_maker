import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;

import 'colors.dart';

class StepperItemPDF extends pw.StatelessWidget {
  final bool isLast;

  StepperItemPDF({
    this.isLast = false,
  });

  @override
  pw.Widget build(pw.Context context) {
    return pw.Column(
      mainAxisSize: pw.MainAxisSize.min,
      crossAxisAlignment: pw.CrossAxisAlignment.start,
      children: [
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
            pw.Text("Oh yeaaah!!!!!", style: pw.Theme.of(context).header3),
          ],
        ),
        pw.Container(
          margin: const pw.EdgeInsets.only(left: 3), // Bullet_width/2
          padding: pw.EdgeInsets.only(
            left: 13, //Sizebox_width + Bullet_width/2
            top: 6,
            bottom: isLast ? 0 : 12,
          ),
          decoration: pw.BoxDecoration(
            border: pw.Border(
              left: pw.BorderSide(
                width: 2,
                color: isLast
                    ? const PdfColor.fromInt(0xffffffff)
                    : const PdfColor.fromInt(0xffcbcbcb),
              ),
            ),
          ),
          child: pw.Column(
            crossAxisAlignment: pw.CrossAxisAlignment.start,
            mainAxisSize: pw.MainAxisSize.min,
            children: [
              pw.Text(
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
                style: pw.Theme.of(context).paragraphStyle,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
