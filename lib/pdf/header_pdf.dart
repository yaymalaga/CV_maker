import 'package:pdf/widgets.dart' as pw;

import 'colors.dart';

class HeaderPDF extends pw.StatelessWidget {
  HeaderPDF();

  @override
  pw.Widget build(pw.Context context) {
    return pw.Row(
      children: [
        pw.Expanded(
          child: pw.Container(
            margin: const pw.EdgeInsets.fromLTRB(36, 42, 18, 6),
            child: pw.LayoutBuilder(
              builder: (context, constraint) => pw.Container(
                width: constraint?.maxWidth,
                height: constraint?.maxWidth,
                decoration: const pw.BoxDecoration(
                  shape: pw.BoxShape.circle,
                  color: blue,
                ),
              ),
            ),
          ),
        ),
        pw.Expanded(
          flex: 2,
          child: pw.Container(
            padding: const pw.EdgeInsets.fromLTRB(16, 42, 36, 18),
            child: pw.Column(
              mainAxisSize: pw.MainAxisSize.min,
              crossAxisAlignment: pw.CrossAxisAlignment.start,
              children: [
                pw.Text(
                  "Name1 Name2 Name3",
                  style: pw.Theme.of(context).header1,
                ),
                pw.Container(
                  margin: const pw.EdgeInsets.only(top: 10),
                  child: pw.Text(
                    "Whatever Whatever Whatever Whatever".toUpperCase(),
                    style: pw.Theme.of(context).header2,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
