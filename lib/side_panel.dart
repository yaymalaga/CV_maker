import 'package:flutter/material.dart';

class SidePanel extends StatelessWidget {
  const SidePanel({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Topic 1".toUpperCase(),
          style: Theme.of(context).textTheme.subtitle2?.copyWith(
                color: Colors.grey.shade900,
                fontWeight: FontWeight.w900,
              ),
        ),
        Container(
          margin: const EdgeInsets.only(top: 6),
          child: Text(
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
            style: Theme.of(context).textTheme.bodyText1?.copyWith(
                  color: Colors.grey.shade700,
                ),
          ),
        ),
        const SizedBox(height: 30),
        Text(
          "Personal details".toUpperCase(),
          style: Theme.of(context).textTheme.subtitle2?.copyWith(
                color: Colors.grey.shade900,
                fontWeight: FontWeight.bold,
              ),
        ),
        const SizedBox(height: 10),
        Text(
          "Birthday",
          style: Theme.of(context).textTheme.subtitle2?.copyWith(
                color: Colors.lightBlue.shade700,
                fontWeight: FontWeight.bold,
              ),
        ),
        Container(
          margin: const EdgeInsets.only(top: 6),
          child: Text(
            "13 / 05 / 21",
            style: Theme.of(context).textTheme.bodyText1?.copyWith(
                  color: Colors.grey.shade700,
                ),
          ),
        ),
        const SizedBox(height: 10),
        Text(
          "Nationality",
          style: Theme.of(context).textTheme.subtitle2?.copyWith(
                color: Colors.lightBlue.shade700,
                fontWeight: FontWeight.bold,
              ),
        ),
        Container(
          margin: const EdgeInsets.only(top: 6),
          child: Text(
            "Lorem ipsum",
            style: Theme.of(context).textTheme.bodyText1?.copyWith(
                  color: Colors.grey.shade700,
                ),
          ),
        ),
        const SizedBox(height: 30),
        Text(
          "Contact".toUpperCase(),
          style: Theme.of(context).textTheme.subtitle2?.copyWith(
                color: Colors.grey.shade900,
                fontWeight: FontWeight.bold,
              ),
        ),
        Container(
          margin: const EdgeInsets.only(top: 6),
          child: Text(
            "admin@anonymous.org",
            style: Theme.of(context).textTheme.bodyText1?.copyWith(
                  color: Colors.grey.shade700,
                ),
          ),
        ),
        Container(
          margin: const EdgeInsets.only(top: 10),
          child: Text(
            "github.com/anonymous",
            style: Theme.of(context).textTheme.bodyText1?.copyWith(
                  color: Colors.grey.shade700,
                ),
          ),
        ),
      ],
    );
  }
}
