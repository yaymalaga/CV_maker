import 'package:flutter/material.dart';

class StepperItem extends StatelessWidget {
  final bool isLast;
  final String title;
  final String subtitle1;
  final String subtitle2;
  final String text;

  const StepperItem({
    Key? key,
    this.isLast = false,
    this.title = "",
    this.subtitle1 = "",
    this.subtitle2 = "",
    this.text = "",
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
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
              title,
              style: Theme.of(context).textTheme.subtitle2?.copyWith(
                    color: Colors.lightBlue.shade700,
                    fontWeight: FontWeight.bold,
                  ),
            ),
          ],
        ),
        Container(
          margin: const EdgeInsets.only(left: 7.5),
          padding: EdgeInsets.only(
            left: 19.5,
            top: 6,
            bottom: isLast ? 0 : 15,
          ),
          decoration: BoxDecoration(
            border: Border(
              left: BorderSide(
                color: isLast ? Colors.transparent : Colors.grey.shade300,
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
                    subtitle1.toUpperCase(),
                    style: Theme.of(context).textTheme.caption?.copyWith(
                          color: Colors.grey.shade900,
                          fontWeight: FontWeight.w900,
                        ),
                  ),
                  const SizedBox(width: 8),
                  Text(
                    subtitle2,
                    style: Theme.of(context).textTheme.caption?.copyWith(
                          color: Colors.grey.shade600,
                          fontWeight: FontWeight.w900,
                        ),
                  ),
                ],
              ),
              if (text != '') ...[
                const SizedBox(height: 4),
                Text(
                  text,
                  style: Theme.of(context).textTheme.bodyText1?.copyWith(
                        color: Colors.grey.shade700,
                      ),
                ),
              ],
            ],
          ),
        ),
      ],
    );
  }
}
