import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;

const PdfColor green = PdfColor.fromInt(0xff9ce5d0);
const PdfColor lightGreen = PdfColor.fromInt(0xffcdf1e7);
const sep = 120.0;

class StepperItemPDF extends pw.StatelessWidget {
  StepperItemPDF();

  @override
  pw.Widget build(pw.Context context) {
    return pw.Column(
      mainAxisSize: pw.MainAxisSize.min,
      crossAxisAlignment: pw.CrossAxisAlignment.start,
      children: [
        pw.Row(
          children: [
            pw.Container(
              width: 17,
              height: 17,
              decoration: const pw.BoxDecoration(
                color: lightGreen,
                shape: pw.BoxShape.circle,
              ),
              child: pw.Center(
                child: pw.Container(
                  width: 8,
                  height: 8,
                  decoration: pw.BoxDecoration(
                    color: green,
                    shape: pw.BoxShape.circle,
                  ),
                ),
              ),
            ),
            pw.SizedBox(width: 12),
            pw.Text(
              "Oh yeaaah!!!!!",
              style: pw.Theme.of(context).defaultTextStyle.copyWith(
                    fontWeight: pw.FontWeight.bold,
                  ),
            ),
          ],
        ),
        pw.Container(
          margin: const pw.EdgeInsets.only(left: 7.5),
          padding: pw.EdgeInsets.only(
            left: 19.5,
            top: 6,
            bottom: 15,
          ),
          decoration: pw.BoxDecoration(
            border: pw.Border(
              left: pw.BorderSide(
                width: 2,
              ),
            ),
          ),
          child: pw.Column(
            crossAxisAlignment: pw.CrossAxisAlignment.start,
            mainAxisSize: pw.MainAxisSize.min,
            children: [
              pw.Text(
                "SDFDSFDSFDS FDSFFFFFFFFFFFF FFFFFFFF FFFFFFFFFFDF DFDSF sdfdsfs sd fdsf sdfdsf",
                style: pw.Theme.of(context).defaultTextStyle.copyWith(),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
