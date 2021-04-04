import 'package:cv_maker/model/resume_data.dart';
import 'package:cv_maker/pdf/common/stepper_tile.dart';
import 'package:pdf/widgets.dart';

import '../common/block.dart';

class ExperienceBlock extends StatelessWidget {
  final List<Experience> items;

  ExperienceBlock({
    required this.items,
  });

  @override
  Widget build(Context context) {
    return Block(
      title: "Experience",
      content: [
        for (var i = 0; i < items.length; i++) ...[
          StepperTile(
            title: items[i].title,
            subtitle1: items[i].company,
            subtitle2: items[i].duration,
            text: items[i].description,
            isLast: i == items.length - 1,
          ),
        ],
      ],
    );
  }
}
