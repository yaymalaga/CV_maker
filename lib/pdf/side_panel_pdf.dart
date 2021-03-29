import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;

const PdfColor green = PdfColor.fromInt(0xff9ce5d0);
const PdfColor lightGreen = PdfColor.fromInt(0xffcdf1e7);
const sep = 120.0;

class SidePanelPDF extends pw.StatelessWidget {
  SidePanelPDF();

  @override
  pw.Widget build(pw.Context context) {
    return pw.Column(
      crossAxisAlignment: pw.CrossAxisAlignment.start,
      children: [
        pw.Text(
          "Topic 1".toUpperCase(),
          style: pw.Theme.of(context).defaultTextStyle.copyWith(
                fontWeight: pw.FontWeight.bold,
              ),
        ),
        pw.Container(
          margin: const pw.EdgeInsets.only(top: 6),
          child: pw.Text(
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
            style: pw.Theme.of(context).defaultTextStyle.copyWith(
                  fontWeight: pw.FontWeight.bold,
                ),
          ),
        ),
        pw.SizedBox(height: 30),
        pw.Text(
          "Personal details".toUpperCase(),
          style: pw.Theme.of(context).defaultTextStyle.copyWith(
                fontWeight: pw.FontWeight.bold,
              ),
        ),
        pw.SizedBox(height: 10),
        pw.Text(
          "Birthday",
          style: pw.Theme.of(context).defaultTextStyle.copyWith(
                fontWeight: pw.FontWeight.bold,
              ),
        ),
        pw.Container(
          margin: const pw.EdgeInsets.only(top: 6),
          child: pw.Text(
            "13 / 05 / 21",
            style: pw.Theme.of(context).defaultTextStyle.copyWith(
                  fontWeight: pw.FontWeight.bold,
                ),
          ),
        ),
        pw.SizedBox(height: 10),
        pw.Text(
          "Nationality",
          style: pw.Theme.of(context).defaultTextStyle.copyWith(
                fontWeight: pw.FontWeight.bold,
              ),
        ),
        pw.Container(
          margin: const pw.EdgeInsets.only(top: 6),
          child: pw.Text(
            "Lorem ipsum",
            style: pw.Theme.of(context).defaultTextStyle.copyWith(
                  fontWeight: pw.FontWeight.bold,
                ),
          ),
        ),
        pw.SizedBox(height: 30),
        pw.Text(
          "Contact".toUpperCase(),
          style: pw.Theme.of(context).defaultTextStyle.copyWith(
                fontWeight: pw.FontWeight.bold,
              ),
        ),
        pw.Container(
          margin: const pw.EdgeInsets.only(top: 6),
          child: pw.Text(
            "admin@anonymous.org",
            style: pw.Theme.of(context).defaultTextStyle.copyWith(
                  fontWeight: pw.FontWeight.bold,
                ),
          ),
        ),
        pw.Container(
          margin: const pw.EdgeInsets.only(top: 10),
          child: pw.Text(
            "github.com/anonymous",
            style: pw.Theme.of(context).defaultTextStyle.copyWith(
                  fontWeight: pw.FontWeight.bold,
                ),
          ),
        ),
      ],
    );
  }
}
