import 'package:pdf/widgets.dart';

import '/model/resume_data.dart';
import 'header_panel/header_panel.dart';
import 'main_panel/main_panel.dart';
import 'side_panel/side_panel.dart';

class LayoutPDF extends StatelessWidget {
  final Font faBrands;
  final MemoryImage? picture;
  final ResumeData resumeData;

  LayoutPDF({
    required this.faBrands,
    required this.resumeData,
    this.picture,
  });

  @override
  Widget build(Context context) {
    return Column(
      children: [
        HeaderPanel(
          name: resumeData.name,
          profession: resumeData.profession,
          picture: picture,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Container(
                padding: const EdgeInsets.fromLTRB(36, 18, 18, 42),
                child: SidePanel(resumeData: resumeData, faBrands: faBrands),
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                padding: const EdgeInsets.fromLTRB(18, 18, 36, 42),
                child: MainPanel(
                  resumeData: resumeData,
                  faBrands: faBrands,
                ),
              ),
            )
          ],
        ),
      ],
    );
  }
}
