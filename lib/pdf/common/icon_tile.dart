import 'package:pdf/widgets.dart';

import 'colors.dart';

class IconTile extends StatelessWidget {
  final int iconCode;
  final Font? iconFont;
  final double iconSize;
  final String text;
  final double spaceX;
  final TextStyle? style;

  IconTile({
    required this.iconCode,
    this.iconFont,
    this.iconSize = 12,
    required this.text,
    this.spaceX = 10,
    this.style,
  });

  @override
  Widget build(Context context) {
    return Row(
      children: [
        Container(
          width: iconSize,
          height: iconSize,
          child: Center(
            child: Icon(
              IconData(
                iconCode,
              ),
              color: blue,
              size: iconSize,
              font: iconFont,
            ),
          ),
        ),
        SizedBox(width: spaceX),
        Text(
          text,
          style: (style != null) ? style! : Theme.of(context).paragraphStyle,
        ),
      ],
    );
  }
}
