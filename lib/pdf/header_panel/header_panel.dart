import 'package:pdf/widgets.dart';

import '../common/colors.dart';

class HeaderPanel extends StatelessWidget {
  final String name;
  final String profession;
  final MemoryImage? picture;

  HeaderPanel({
    required this.name,
    required this.profession,
    this.picture,
  });

  @override
  Widget build(Context context) {
    return Row(
      children: [
        Expanded(
          flex: 4,
          child: LayoutBuilder(
            builder: (context, constraint) => Container(
              width: constraint?.maxWidth,
              height: constraint?.maxWidth,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: picture == null ? blue : null,
                image: picture != null
                    ? DecorationImage(
                        image: picture!,
                      )
                    : null,
              ),
            ),
          ),
        ),
        Expanded(
          flex: 11,
          child: Container(
            margin: const EdgeInsets.only(left: 30),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: Theme.of(context).header1,
                ),
                SizedBox(height: 10),
                Text(
                  profession.toUpperCase(),
                  style: Theme.of(context).header2,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
