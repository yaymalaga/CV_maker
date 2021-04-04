import 'package:pdf/widgets.dart';

import '../common/block.dart';
import '../common/icon_tile.dart';

class ExtraBlock extends StatelessWidget {
  final List<String> items;
  final double itemsSpace;
  final String title;

  ExtraBlock({
    required this.title,
    required this.items,
    this.itemsSpace = 6,
  });

  @override
  Widget build(Context context) {
    return Block(
      title: title,
      content: [
        for (var i = 0; i < items.length; i++) ...[
          IconTile(
            iconCode: 0xf111,
            text: items[i],
            iconSize: 6,
          ),
          if (i != items.length - 1) SizedBox(height: itemsSpace),
        ],
      ],
    );
  }
}
