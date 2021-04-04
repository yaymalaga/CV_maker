import 'package:pdf/widgets.dart';

import '../../model/resume_data.dart';
import 'about_block.dart';
import 'personal_block.dart';
import 'profile_block.dart';

class SidePanel extends StatelessWidget {
  final ResumeData resumeData;
  final Font faBrands;

  SidePanel({
    required this.resumeData,
    required this.faBrands,
  });

  @override
  Widget build(Context context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (resumeData.profile != null)
          ProfileBlock(
            text: resumeData.profile!,
          ),
        if (resumeData.personal != null)
          PersonalBlock(
            faBrands: faBrands,
            items: resumeData.personal!,
          ),
        if (resumeData.about != null)
          AboutBlock(
            items: resumeData.about!,
          ),
      ],
    );
  }
}
