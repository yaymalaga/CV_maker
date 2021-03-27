import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 150,
          height: 150,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.white,
          ),
          child: Center(
            child: Text(
              "YM",
              style: Theme.of(context).textTheme.headline5,
            ),
          ),
        ),
        Expanded(
          child: Container(
            margin: const EdgeInsets.only(left: 48),
            color: Colors.purple,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Name Namename Namename",
                  overflow: TextOverflow.clip,
                  style: Theme.of(context).textTheme.headline3,
                ),
                Text(
                  "Prime minister of New Zealand".toUpperCase(),
                  overflow: TextOverflow.clip,
                  style: Theme.of(context).textTheme.headline5,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
