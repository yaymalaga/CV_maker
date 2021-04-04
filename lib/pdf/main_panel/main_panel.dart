import 'package:cv_maker/pdf/main_panel/education_block.dart';
import 'package:cv_maker/pdf/main_panel/experience_block.dart';
import 'package:pdf/widgets.dart';

import '../../model/resume_data.dart';
import 'extras_section.dart';
import 'skills_section.dart';

class MainPanel extends StatelessWidget {
  final ResumeData resumeData;
  final Font faBrands;

  MainPanel({
    required this.resumeData,
    required this.faBrands,
  });

  @override
  Widget build(Context context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (resumeData.experience != null)
          ExperienceBlock(
            items: resumeData.experience!,
          ),
        if (resumeData.education != null)
          EducationeBlock(
            items: resumeData.education!,
          ),
        SkillsSection(
          skillA: resumeData.skillsA,
          skillB: resumeData.skillsB,
        ),
        ExtrasSection(
          extraA: resumeData.extrasA,
          extraB: resumeData.extrasB,
          extraC: resumeData.extrasC,
        ),
      ],
    );
  }
}
