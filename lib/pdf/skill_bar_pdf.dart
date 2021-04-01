import 'package:pdf/widgets.dart';

import 'colors.dart';

class SkillsSectionPDF extends StatelessWidget {
  SkillsSectionPDF();

  @override
  Widget build(Context context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Skills".toUpperCase(),
          style: Theme.of(context).header2,
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
          style: Theme.of(context).paragraphStyle,
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
        color: fill ? blue : lightBlue,
        borderRadius: const BorderRadius.all(
          Radius.circular(2),
        ),
      ),
    );
  }
}
