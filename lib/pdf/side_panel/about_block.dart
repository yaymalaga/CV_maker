import 'package:pdf/widgets.dart';

import '../common/block.dart';
import '../common/icon_tile.dart';

class AboutBlock extends StatelessWidget {
  final List<String> items;
  final double itemsSpace;

  AboutBlock({
    required this.items,
    this.itemsSpace = 10,
  });

  @override
  Widget build(Context context) {
    return Block(
      title: "About me",
      titleMargin: 8,
      content: [
        for (var i = 0; i < items.length; i++) ...[
          IconTile(
            iconCode: 0xf058,
            text: items[i],
          ),
          if (i != items.length - 1) SizedBox(height: itemsSpace),
        ],
      ],
    );
  }
}
