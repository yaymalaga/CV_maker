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
          "Experience".toUpperCase(),
          style: Theme.of(context).textTheme.subtitle2?.copyWith(
                color: Colors.grey.shade900,
                fontWeight: FontWeight.w900,
              ),
        ),
        Container(
          margin: const EdgeInsets.only(top: 6),
          child: Stepper(),
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

class Stepper extends StatelessWidget {
  const Stepper({
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
            SizedBox(width: 12),
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
          margin: EdgeInsets.only(left: 7.5),
          padding: EdgeInsets.only(left: 20.5, top: 6, bottom: 15),
          child: Text(
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
            style: Theme.of(context).textTheme.bodyText1?.copyWith(
                  color: Colors.grey.shade700,
                ),
          ),
          decoration: BoxDecoration(
              border: Border(
            left: BorderSide(
              color: Colors.grey.shade300,
              width: 2,
            ),
          )),
        ),
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
            SizedBox(width: 12),
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
          margin: EdgeInsets.only(left: 7.5),
          padding: EdgeInsets.only(left: 20.5, top: 6, bottom: 15),
          child: Text(
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
            style: Theme.of(context).textTheme.bodyText1?.copyWith(
                  color: Colors.grey.shade700,
                ),
          ),
          decoration: BoxDecoration(
              border: Border(
            left: BorderSide(
              color: Colors.grey.shade300,
              width: 2,
            ),
          )),
        ),
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
            SizedBox(width: 12),
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
          margin: EdgeInsets.only(left: 7.5),
          padding: EdgeInsets.only(left: 20.5, top: 6, bottom: 15),
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
