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
        const SizedBox(height: 6),
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
        Row(
          children: [
            const SkillsSection(),
            const SizedBox(width: 64),
            const SkillsSection(),
          ],
        ),
        const SizedBox(height: 30),
        Text(
          "Extra".toUpperCase(),
          style: Theme.of(context).textTheme.subtitle2?.copyWith(
                color: Colors.grey.shade900,
                fontWeight: FontWeight.w900,
              ),
        ),
        const SizedBox(height: 6),
        Row(
          children: [
            Container(
              width: 8,
              height: 8,
              decoration: BoxDecoration(
                color: Colors.lightBlue.shade600,
                shape: BoxShape.circle,
              ),
            ),
            SizedBox(width: 20.5),
            Text(
              "Lorem",
              style: Theme.of(context).textTheme.bodyText1?.copyWith(
                    color: Colors.grey.shade700,
                  ),
            ),
          ],
        ),
        const SizedBox(height: 6),
        Row(
          children: [
            Container(
              width: 8,
              height: 8,
              decoration: BoxDecoration(
                color: Colors.lightBlue.shade600,
                shape: BoxShape.circle,
              ),
            ),
            SizedBox(width: 20.5),
            Text(
              "Impsum",
              style: Theme.of(context).textTheme.bodyText1?.copyWith(
                    color: Colors.grey.shade700,
                  ),
            ),
          ],
        ),
        const SizedBox(height: 6),
        Row(
          children: [
            Container(
              width: 8,
              height: 8,
              decoration: BoxDecoration(
                color: Colors.lightBlue.shade600,
                shape: BoxShape.circle,
              ),
            ),
            SizedBox(width: 20.5),
            Text(
              "Amet",
              style: Theme.of(context).textTheme.bodyText1?.copyWith(
                    color: Colors.grey.shade700,
                  ),
            ),
          ],
        )
      ],
    );
  }
}

class SkillsSection extends StatelessWidget {
  const SkillsSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
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
      ],
    );
  }
}
