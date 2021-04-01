import 'package:cv_maker/pdf/colors.dart';
import 'package:pdf/widgets.dart' as pw;

class SidePanelPDF extends pw.StatelessWidget {
  final pw.Font faBrands;

  SidePanelPDF({required this.faBrands});

  @override
  pw.Widget build(pw.Context context) {
    return pw.Column(
      crossAxisAlignment: pw.CrossAxisAlignment.start,
      children: [
        pw.Text(
          "Topic 1".toUpperCase(),
          style: pw.Theme.of(context).header2,
        ),
        pw.Container(
          margin: const pw.EdgeInsets.only(top: 6),
          child: pw.Text(
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
            style: pw.Theme.of(context).paragraphStyle,
            textAlign: pw.TextAlign.justify,
          ),
        ),
        pw.SizedBox(height: 30),
        pw.Text(
          "Personal details".toUpperCase(),
          style: pw.Theme.of(context).header2,
        ),
        pw.SizedBox(height: 8),
        pw.Row(
          children: [
            pw.Container(
              width: 12,
              height: 12,
              child: pw.Center(
                child: pw.Icon(
                  pw.IconData(
                    0xf073,
                  ),
                  color: blue,
                  size: 12,
                ),
              ),
            ),
            pw.SizedBox(width: 10),
            pw.Text(
              "13 / 05 / 21",
              style: pw.Theme.of(context).paragraphStyle,
            ),
          ],
        ),
        pw.SizedBox(height: 10),
        pw.Row(
          children: [
            pw.Container(
              width: 12,
              height: 12,
              child: pw.Center(
                child: pw.Icon(
                  pw.IconData(
                    0xf7a2,
                  ),
                  color: blue,
                  size: 12,
                ),
              ),
            ),
            pw.SizedBox(width: 10),
            pw.Text(
              "Earth",
              style: pw.Theme.of(context).paragraphStyle,
            ),
          ],
        ),
        pw.SizedBox(height: 10),
        pw.Row(
          children: [
            pw.Container(
              width: 12,
              height: 12,
              child: pw.Center(
                child: pw.Icon(
                  pw.IconData(
                    0xf3c5,
                  ),
                  color: blue,
                  size: 12,
                ),
              ),
            ),
            pw.SizedBox(width: 10),
            pw.Text(
              "Somewhere, Earth",
              style: pw.Theme.of(context).paragraphStyle,
            ),
          ],
        ),
        pw.SizedBox(height: 10),
        pw.Row(
          children: [
            pw.Container(
              width: 12,
              height: 12,
              child: pw.Center(
                child: pw.Icon(
                  pw.IconData(
                    0xf09b,
                  ),
                  color: blue,
                  size: 12,
                  font: faBrands,
                ),
              ),
            ),
            pw.SizedBox(width: 10),
            pw.Text(
              "username",
              style: pw.Theme.of(context).paragraphStyle,
            ),
          ],
        ),
        pw.SizedBox(height: 10),
        pw.Row(
          children: [
            pw.Container(
              width: 12,
              height: 12,
              child: pw.Center(
                child: pw.Icon(
                  pw.IconData(
                    0xe007,
                  ),
                  color: blue,
                  size: 12,
                  font: faBrands,
                ),
              ),
            ),
            pw.SizedBox(width: 10),
            pw.Text(
              "test.com",
              style: pw.Theme.of(context).paragraphStyle,
            ),
          ],
        ),
        pw.SizedBox(height: 10),
        pw.Row(
          children: [
            pw.Container(
              width: 12,
              height: 12,
              child: pw.Center(
                child: pw.Icon(
                  pw.IconData(
                    0xf0e0,
                  ),
                  color: blue,
                  size: 12,
                ),
              ),
            ),
            pw.SizedBox(width: 10),
            pw.Text(
              "admin@mail.com",
              style: pw.Theme.of(context).paragraphStyle,
            ),
          ],
        ),
        pw.SizedBox(height: 30),
        pw.Text(
          "About me".toUpperCase(),
          style: pw.Theme.of(context).header2,
        ),
        pw.SizedBox(height: 8),
        pw.Row(
          children: [
            pw.Container(
              width: 12,
              height: 12,
              child: pw.Center(
                child: pw.Icon(
                  pw.IconData(
                    0xf058,
                  ),
                  color: blue,
                  size: 12,
                ),
              ),
            ),
            pw.SizedBox(width: 10),
            pw.Text(
              "AAAAA",
              style: pw.Theme.of(context).paragraphStyle,
            ),
          ],
        ),
        pw.SizedBox(height: 10),
        pw.Row(
          children: [
            pw.Container(
              width: 12,
              height: 12,
              child: pw.Center(
                child: pw.Icon(
                  pw.IconData(
                    0xf058,
                  ),
                  color: blue,
                  size: 12,
                ),
              ),
            ),
            pw.SizedBox(width: 10),
            pw.Text(
              "BBBB",
              style: pw.Theme.of(context).paragraphStyle,
            ),
          ],
        ),
      ],
    );
  }
}
