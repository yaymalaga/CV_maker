import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints(
        maxHeight: 300,
      ),
      child: Row(
        children: [
          Expanded(
            child: Container(
              padding: const EdgeInsets.symmetric(
                vertical: 38,
                horizontal: 38,
              ),
              child: LayoutBuilder(
                builder: (context, constraint) => Container(
                  width: constraint.maxWidth,
                  height: constraint.maxWidth,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.yellow,
                  ),
                  child: Center(
                    child: Text(
                      "YM",
                      style: Theme.of(context).textTheme.headline5,
                    ),
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              padding: const EdgeInsets.symmetric(
                vertical: 38,
                horizontal: 38,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Name1 Name2 Name3",
                    style: Theme.of(context).textTheme.headline2?.copyWith(
                          height: 1,
                          color: Colors.lightBlue.shade700,
                        ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 10),
                    child: Text(
                      "Whatever Whatever Whatever Whatever".toUpperCase(),
                      style: Theme.of(context).textTheme.headline6?.copyWith(
                            color: Colors.grey.shade800,
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
