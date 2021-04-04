import 'package:cv_maker/model/resume_data.dart';
import 'package:cv_maker/pdf/main_panel/skill_block.dart';
import 'package:pdf/widgets.dart';

class SkillsSection extends StatelessWidget {
  final Skill? skillA;
  final Skill? skillB;

  SkillsSection({
    this.skillA,
    this.skillB,
  });

  @override
  Widget build(Context context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        if (skillA != null)
          Expanded(
            child: SkillBlock(
              title: skillA!.title,
              items: skillA!.content,
            ),
          ),
        if (skillB != null)
          Expanded(
            child: SkillBlock(
              title: skillB!.title,
              items: skillB!.content,
            ),
          ),
      ],
    );
  }
}
