import 'package:cv_maker/model/resume_data.dart';
import 'package:pdf/widgets.dart';

import '../common/block.dart';
import '../common/icon_tile.dart';

class PersonalBlock extends StatelessWidget {
  final Personal items;
  final Font faBrands;
  final double itemsSpace;

  PersonalBlock({
    required this.items,
    required this.faBrands,
    this.itemsSpace = 10,
  });

  @override
  Widget build(Context context) {
    return Block(
      title: "Personal details",
      titleMargin: 8,
      //TODO: Make the whole block generic - elements, icons, font, etc.
      contentMargin: 30 - itemsSpace,
      content: [
        if (items.birthday != null) ...[
          IconTile(
            iconCode: 0xf073,
            text: items.birthday!,
          ),
          SizedBox(height: itemsSpace),
        ],
        if (items.nationality != null) ...[
          IconTile(
            iconCode: 0xf7a2,
            text: items.nationality!,
          ),
          SizedBox(height: itemsSpace),
        ],
        if (items.location != null) ...[
          IconTile(
            iconCode: 0xf3c5,
            text: items.location!,
          ),
          SizedBox(height: itemsSpace),
        ],
        if (items.github != null) ...[
          IconTile(
            iconCode: 0xf09b,
            text: items.github!,
            iconFont: faBrands,
          ),
          SizedBox(height: itemsSpace),
        ],
        if (items.website != null) ...[
          IconTile(
            iconCode: 0xe007,
            text: items.website!,
            iconFont: faBrands,
          ),
          SizedBox(height: itemsSpace),
        ],
        if (items.mail != null) ...[
          IconTile(
            iconCode: 0xf0e0,
            text: items.mail!,
          ),
          SizedBox(height: itemsSpace),
        ],
      ],
    );
  }
}
