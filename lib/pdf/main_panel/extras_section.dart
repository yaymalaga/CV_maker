import 'package:pdf/widgets.dart';

import '/model/resume_data.dart';
import 'extra_block.dart';

class ExtrasSection extends StatelessWidget {
  final Extra? extraA;
  final Extra? extraB;
  final Extra? extraC;

  ExtrasSection({
    this.extraA,
    this.extraB,
    this.extraC,
  });

  @override
  Widget build(Context context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        if (extraA != null)
          ExtraBlock(
            title: extraA!.title,
            items: extraA!.content,
          ),
        if (extraB != null)
          ExtraBlock(
            title: extraB!.title,
            items: extraB!.content,
          ),
        if (extraC != null)
          ExtraBlock(
            title: extraC!.title,
            items: extraC!.content,
          ),
      ],
    );
  }
}
