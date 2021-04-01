import 'package:pdf/widgets.dart' as pw;

import 'header_pdf.dart';
import 'main_panel_pdf.dart';
import 'side_panel_pdf.dart';

class LayoutPDF extends pw.StatelessWidget {
  LayoutPDF();

  @override
  pw.Widget build(pw.Context context) {
    return pw.Column(
      children: [
        HeaderPDF(),
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
