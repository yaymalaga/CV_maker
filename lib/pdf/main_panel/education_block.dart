import 'package:cv_maker/model/resume_data.dart';
import 'package:cv_maker/pdf/common/stepper_tile.dart';
import 'package:pdf/widgets.dart';

import '../common/block.dart';

class EducationeBlock extends StatelessWidget {
  final List<Education> items;

  EducationeBlock({
    required this.items,
  });

  @override
  Widget build(Context context) {
    return Block(
      title: "Education",
      content: [
        for (var i = 0; i < items.length; i++) ...[
          StepperTile(
            title: items[i].title,
            subtitle1: items[i].place,
            subtitle2: items[i].duration,
            isLast: i == items.length - 1,
          ),
        ],
      ],
    );
  }
}
