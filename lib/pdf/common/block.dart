import 'package:pdf/widgets.dart';

class Block extends StatelessWidget {
  final List<Widget> content;
  final String title;
  final double titleMargin;
  final double contentMargin;

  Block({
    required this.content,
    required this.title,
    this.titleMargin = 6,
    this.contentMargin = 30,
  });

  @override
  Widget build(Context context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title.toUpperCase(),
          style: Theme.of(context).header2,
        ),
        SizedBox(height: titleMargin),
        ...content,
        SizedBox(height: contentMargin),
      ],
    );
  }
}
