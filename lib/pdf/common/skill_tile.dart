import 'package:pdf/widgets.dart';

import 'colors.dart';

class SkillTile extends StatelessWidget {
  final int level;
  final String text;
  final double spaceX;

  SkillTile({
    required this.level,
    required this.text,
    this.spaceX = 10,
  });

  @override
  Widget build(Context context) {
    return Row(
      children: [
        for (var i = 0; i < 4; i++) ...[
          SkillBarPiece(
            isFill: i < level,
          ),
          SizedBox(
            width: i == 3 ? spaceX : 3,
          ),
        ],
        Text(
          text,
          style: Theme.of(context).paragraphStyle,
        ),
      ],
    );
  }
}

class SkillBarPiece extends StatelessWidget {
  final bool isFill;

  SkillBarPiece({
    this.isFill = false,
  });

  @override
  Widget build(Context context) {
    return Container(
      width: 23,
      height: 4,
      decoration: BoxDecoration(
        color: isFill ? blue : lightBlue,
        borderRadius: const BorderRadius.all(
          Radius.circular(2),
        ),
      ),
    );
  }
}
