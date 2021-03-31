import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart';

const PdfColor green = PdfColor.fromInt(0xff9ce5d0);
const PdfColor lightGreen = PdfColor.fromInt(0xffcdf1e7);

class SkillsSectionPDF extends StatelessWidget {
  SkillsSectionPDF();

  @override
  Widget build(Context context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Skills".toUpperCase(),
          style: Theme.of(context).defaultTextStyle.copyWith(
                fontWeight: FontWeight.bold,
              ),
        ),
        Container(
          margin: const EdgeInsets.only(top: 6),
          child: SkillBar(),
        ),
        Container(
          margin: const EdgeInsets.only(top: 6),
          child: SkillBar(),
        ),
        Container(
          margin: const EdgeInsets.only(top: 6),
          child: SkillBar(),
        ),
      ],
    );
  }
}

class SkillBar extends StatelessWidget {
  SkillBar();

  @override
  Widget build(Context context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        SkillBarPiece(fill: true),
        SizedBox(width: 3),
        SkillBarPiece(fill: true),
        SizedBox(width: 3),
        SkillBarPiece(),
        SizedBox(width: 3),
        SkillBarPiece(),
        SizedBox(width: 12),
        Text(
          "Skill1",
          style: Theme.of(context).defaultTextStyle,
        ),
      ],
    );
  }
}

class SkillBarPiece extends StatelessWidget {
  final bool fill;

  SkillBarPiece({
    this.fill = false,
  });

  @override
  Widget build(Context context) {
    return Container(
      width: 23,
      height: 4,
      decoration: BoxDecoration(
        color: fill ? green : lightGreen,
        borderRadius: const BorderRadius.all(
          Radius.circular(2),
        ),
      ),
    );
  }
}
