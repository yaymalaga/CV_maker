import 'package:flutter/material.dart';

import 'skill_bar.dart';
import 'stepper_item.dart';

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
          "Experience".toUpperCase(),
          style: Theme.of(context).textTheme.subtitle2?.copyWith(
                color: Colors.grey.shade900,
                fontWeight: FontWeight.w900,
              ),
        ),
        const SizedBox(height: 6),
        const StepperItem(
          title: "Title",
          subtitle1: "Office",
          subtitle2: "FEB 2020 - DEC 2030",
          text:
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
        ),
        const StepperItem(
          title: "Title",
          subtitle1: "Office",
          subtitle2: "FEB 2020 - DEC 2030",
          text:
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
          isLast: true,
        ),
        const SizedBox(height: 30),
        Text(
          "Education".toUpperCase(),
          style: Theme.of(context).textTheme.subtitle2?.copyWith(
                color: Colors.grey.shade900,
                fontWeight: FontWeight.w900,
              ),
        ),
        const StepperItem(
          title: "Title",
          subtitle1: "Office",
          subtitle2: "FEB 2020 - DEC 2030",
        ),
        const StepperItem(
          title: "Title",
          subtitle1: "Office",
          subtitle2: "FEB 2020 - DEC 2030",
          isLast: true,
        ),
        const SizedBox(height: 30),
        Text(
          "Skills".toUpperCase(),
          style: Theme.of(context).textTheme.subtitle2?.copyWith(
                color: Colors.grey.shade900,
                fontWeight: FontWeight.w900,
              ),
        ),
        Container(
          margin: const EdgeInsets.only(top: 6),
          child: const SkillBar(),
        ),
        Container(
          margin: const EdgeInsets.only(top: 6),
          child: const SkillBar(),
        ),
        Container(
          margin: const EdgeInsets.only(top: 6),
          child: const SkillBar(),
        ),
        const SizedBox(height: 30),
      ],
    );
  }
}
