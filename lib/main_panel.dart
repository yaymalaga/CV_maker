import 'package:flutter/material.dart';

class MainPanel extends StatelessWidget {
  const MainPanel({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Name Namename Namename",
          style: Theme.of(context).textTheme.headline3?.copyWith(height: 1),
        ),
        Text(
          "Name Namename Namename",
          style: Theme.of(context).textTheme.headline3?.copyWith(height: 1),
        ),
        Text(
          "Name Namename Namename",
          style: Theme.of(context).textTheme.headline3?.copyWith(height: 1),
        ),
      ],
    );
  }
}
