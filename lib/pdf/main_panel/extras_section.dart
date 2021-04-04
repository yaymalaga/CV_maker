import 'package:pdf/widgets.dart';

import '/model/resume_data.dart';
import 'extra_block.dart';

class ExtrasSection extends StatelessWidget {
  final Extra? extraA;
  final Extra? extraB;

  ExtrasSection({
    this.extraA,
    this.extraB,
  });

  @override
  Widget build(Context context) {
    return Row(
      children: [
        if (extraA != null)
          Expanded(
            child: ExtraBlock(
              title: extraA!.title,
              items: extraA!.content,
            ),
          ),
        if (extraB != null)
          Expanded(
            child: ExtraBlock(
              title: extraB!.title,
              items: extraB!.content,
            ),
          ),
      ],
    );
  }
}
