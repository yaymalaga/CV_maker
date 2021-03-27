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
          "Professional experience".toUpperCase(),
          style: Theme.of(context).textTheme.subtitle2?.copyWith(
                color: Colors.grey.shade900,
                fontWeight: FontWeight.w900,
              ),
        ),
        Container(
          margin: const EdgeInsets.only(top: 6),
          child: Text(
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
            style: Theme.of(context).textTheme.bodyText1?.copyWith(
                  color: Colors.grey.shade700,
                ),
          ),
        ),
        SizedBox(height: 30),
        Text(
          "Education".toUpperCase(),
          style: Theme.of(context).textTheme.subtitle2?.copyWith(
                color: Colors.grey.shade900,
                fontWeight: FontWeight.w900,
              ),
        ),
        Container(
          margin: const EdgeInsets.only(top: 6),
          child: Text(
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
            style: Theme.of(context).textTheme.bodyText1?.copyWith(
                  color: Colors.grey.shade700,
                ),
          ),
        ),
        SizedBox(height: 30),
      ],
    );
  }
}
