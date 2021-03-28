import 'package:flutter/material.dart';

class SkillBar extends StatelessWidget {
  const SkillBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        const SkillBarPiece(fill: true),
        const SizedBox(width: 4),
        const SkillBarPiece(fill: true),
        const SizedBox(width: 4),
        const SkillBarPiece(),
        const SizedBox(width: 4),
        const SkillBarPiece(),
        const SizedBox(width: 12),
        Text(
          "Skill1",
          style: Theme.of(context).textTheme.bodyText1?.copyWith(
                color: Colors.grey.shade700,
              ),
        ),
      ],
    );
  }
}

class SkillBarPiece extends StatelessWidget {
  final bool fill;

  const SkillBarPiece({
    Key? key,
    this.fill = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 30,
      height: 4,
      decoration: BoxDecoration(
        color: fill
            ? Colors.lightBlue.shade600
            : Colors.lightBlue.shade100.withOpacity(0.75),
        borderRadius: const BorderRadius.all(
          Radius.circular(2),
        ),
      ),
    );
  }
}
