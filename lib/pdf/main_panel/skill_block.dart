import 'package:pdf/widgets.dart';

import '/model/resume_data.dart';
import '/pdf/common/block.dart';
import '/pdf/common/skill_tile.dart';

class SkillBlock extends StatelessWidget {
  final List<SkillContent> items;
  final double itemsSpace;
  final String title;

  SkillBlock({
    required this.title,
    required this.items,
    this.itemsSpace = 6,
  });

  @override
  Widget build(Context context) {
    return Block(
      title: title,
      content: [
        for (var i = 0; i < items.length; i++) ...[
          SkillTile(level: items[i].grade, text: items[i].label),
          if (i != items.length - 1) SizedBox(height: itemsSpace),
        ],
      ],
    );
  }
}
