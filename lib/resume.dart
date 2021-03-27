import 'package:flutter/material.dart';

import 'header.dart';
import 'main_panel.dart';
import 'side_panel.dart';

class Resume extends StatelessWidget {
  const Resume({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      children: [
        const Header(),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Container(
                padding: const EdgeInsets.symmetric(
                  vertical: 38,
                  horizontal: 38,
                ),
                color: Colors.green,
                child: const SidePanel(),
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                padding: const EdgeInsets.symmetric(
                  vertical: 38,
                  horizontal: 38,
                ),
                color: Colors.red,
                child: const MainPanel(),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
