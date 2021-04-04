import 'package:cv_maker/pdf/common/icon_tile.dart';
import 'package:pdf/widgets.dart';

import 'colors.dart';

class StepperTile extends StatelessWidget {
  final String title;
  final String subtitle1;
  final String subtitle2;
  final String? text;
  final bool isLast;

  StepperTile({
    this.isLast = false,
    required this.title,
    required this.subtitle1,
    required this.subtitle2,
    this.text,
  });

  @override
  Widget build(Context context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        IconTile(
          iconCode: 0xf111,
          text: title,
          iconSize: 6,
          style: Theme.of(context).header3,
        ),
        Container(
          margin: const EdgeInsets.only(left: 3), // Bullet_width/2
          padding: EdgeInsets.only(
            left: 13, //Space_width + Bullet_width/2
            top: 4,
            bottom: isLast ? 0 : 12,
          ),
          decoration: BoxDecoration(
            border: Border(
              left: BorderSide(
                width: 2,
                color: isLast ? white : superLightGrey,
              ),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    subtitle1.toUpperCase(),
                    style: Theme.of(context).header4.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                  Text(
                    subtitle2.toUpperCase(),
                    style: Theme.of(context).header4,
                  ),
                ],
              ),
              if (text != null) ...[
                SizedBox(height: 3),
                Text(
                  text!,
                  style: Theme.of(context).paragraphStyle,
                  textAlign: TextAlign.justify,
                ),
              ],
            ],
          ),
        ),
      ],
    );
  }
}
