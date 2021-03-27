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
              color: Colors.orange,
              child: LayoutBuilder(
                builder: (context, constraint) => Container(
                  width: constraint.maxWidth,
                  height: constraint.maxWidth,
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
              color: Colors.red,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Name Namename Namename",
                    style: Theme.of(context)
                        .textTheme
                        .headline3
                        ?.copyWith(height: 1),
                  ),
                  Text(
                    "Prime minister of New Zealand".toUpperCase(),
                    style: Theme.of(context).textTheme.headline5,
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
