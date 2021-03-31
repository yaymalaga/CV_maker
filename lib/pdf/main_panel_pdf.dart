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
      children: [
        StepperItemPDF(),
        StepperItemPDF(),
      ],
    );
  }
}
