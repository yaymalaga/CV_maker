import 'package:flutter/material.dart';

class SimpleStepper extends StatelessWidget {
  const SimpleStepper({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: const [
        StepperItem(),
        StepperItem(),
        StepperItem(),
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
          decoration: BoxDecoration(
            border: Border(
              left: BorderSide(
                color: Colors.grey.shade300,
                width: 2,
              ),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    "Company".toUpperCase(),
                    style: Theme.of(context).textTheme.caption?.copyWith(
                          color: Colors.black,
                          fontWeight: FontWeight.w900,
                        ),
                  ),
                  const SizedBox(width: 8),
                  Text(
                    "Feb 2020 - Dec 2030",
                    style: Theme.of(context).textTheme.caption?.copyWith(
                          color: Colors.grey.shade700,
                        ),
                  ),
                ],
              ),
              Text(
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
                style: Theme.of(context).textTheme.bodyText1?.copyWith(
                      color: Colors.grey.shade700,
                    ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
