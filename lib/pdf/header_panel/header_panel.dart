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
          child: Container(
            margin: const EdgeInsets.fromLTRB(36, 42, 18, 6),
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
        ),
        Expanded(
          flex: 2,
          child: Container(
            padding: const EdgeInsets.fromLTRB(16, 42, 36, 18),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: Theme.of(context).header1,
                ),
                Container(
                  margin: const EdgeInsets.only(top: 10),
                  child: Text(
                    profession.toUpperCase(),
                    style: Theme.of(context).header2,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
