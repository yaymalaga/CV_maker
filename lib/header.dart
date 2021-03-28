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
              padding: const EdgeInsets.fromLTRB(36, 42, 18, 6),
              child: LayoutBuilder(
                builder: (context, constraint) => Container(
                  width: constraint.maxWidth,
                  height: constraint.maxWidth,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    //color: Colors.yellow,
                    image: DecorationImage(
                        image: NetworkImage(
                            'https://c8.alamy.com/comp/PM7763/film-still-publicity-still-from-the-simpsons-homer-simpson-circa-1999-2000-file-reference-30973786tha-for-editorial-use-only-all-rights-reserved-PM7763.jpg'),
                        fit: BoxFit.cover),
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              padding: const EdgeInsets.fromLTRB(16, 42, 36, 18),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Name1 Name2 Name3",
                    style: Theme.of(context).textTheme.headline3?.copyWith(
                          height: 1,
                          color: Colors.lightBlue.shade700,
                        ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 10),
                    child: Text(
                      "Whatever Whatever Whatever Whatever".toUpperCase(),
                      style: Theme.of(context).textTheme.subtitle1?.copyWith(
                            color: Colors.grey.shade800,
                            fontWeight: FontWeight.w900,
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
