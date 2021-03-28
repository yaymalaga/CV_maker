import 'package:flutter/material.dart';

class Stepper extends StatelessWidget {
  const Stepper({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const StepperItem(),
        const StepperItem(),
        const StepperItem(),
      ],
    );
  }
}

class StepperItem extends StatelessWidget {
  const StepperItem({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          children: [
            Container(
              width: 17,
              height: 17,
              decoration: BoxDecoration(
                color: Colors.lightBlue.shade100.withOpacity(0.4),
                shape: BoxShape.circle,
              ),
              child: Center(
                child: Container(
                  width: 8,
                  height: 8,
                  decoration: BoxDecoration(
                    color: Colors.lightBlue.shade600,
                    shape: BoxShape.circle,
                  ),
                ),
              ),
            ),
            const SizedBox(width: 12),
            Text(
              "Birthday",
              style: Theme.of(context).textTheme.subtitle2?.copyWith(
                    color: Colors.lightBlue.shade700,
                    fontWeight: FontWeight.bold,
                  ),
            ),
          ],
        ),
        Container(
          margin: const EdgeInsets.only(left: 7.5),
          padding: const EdgeInsets.only(left: 20.5, top: 6, bottom: 15),
          child: Text(
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
            style: Theme.of(context).textTheme.bodyText1?.copyWith(
                  color: Colors.grey.shade700,
                ),
          ),
        ),
      ],
    );
  }
}
