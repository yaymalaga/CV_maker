import 'package:pdf/widgets.dart';

import '../common/block.dart';

class ProfileBlock extends StatelessWidget {
  final String text;

  ProfileBlock({
    required this.text,
  });

  @override
  Widget build(Context context) {
    return Block(
      title: "Profile",
      content: [
        Text(
          text,
          style: Theme.of(context).paragraphStyle,
          textAlign: TextAlign.justify,
        ),
      ],
    );
  }
}
