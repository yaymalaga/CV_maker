import 'package:flutter/material.dart';

class SidePanel extends StatelessWidget {
  const SidePanel({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "Name Namename Namename",
          style: Theme.of(context).textTheme.headline1?.copyWith(height: 1),
        ),
        Text(
          "DFKSDFK DSFKDSNF DFS",
          style: Theme.of(context).textTheme.headline1?.copyWith(height: 1),
        ),
        Text(
          "qwqqwqe ewfrewg ewfew",
          style: Theme.of(context).textTheme.headline1?.copyWith(height: 1),
        ),
      ],
    );
  }
}
