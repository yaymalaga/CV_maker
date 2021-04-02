import 'package:freezed_annotation/freezed_annotation.dart';

part 'resume_data.freezed.dart';
part 'resume_data.g.dart';

@freezed
class ResumeData with _$ResumeData {
  const factory ResumeData({
    String? profile,
    Personal? personal,
    List<String>? about,
    List<Experience>? experience,
    List<Education>? education,
    Skills? skillsA,
    Skills? skillsB,
    Extras? extrasA,
    Extras? extrasB,
    Extras? extrasC,
  }) = _ResumeData;

  factory ResumeData.fromJson(Map<String, dynamic> json) =>
      _$ResumeDataFromJson(json);
}

@freezed
class Education with _$Education {
  const factory Education({
    required String title,
    required String place,
    required String duration,
  }) = _Education;

  factory Education.fromJson(Map<String, dynamic> json) =>
      _$EducationFromJson(json);
}

@freezed
class Experience with _$Experience {
  const factory Experience({
    required String title,
    required String duration,
    required String company,
    required String description,
  }) = _Experience;

  factory Experience.fromJson(Map<String, dynamic> json) =>
      _$ExperienceFromJson(json);
}

@freezed
class Extras with _$Extras {
  const factory Extras({
    required String title,
    required List<String> content,
  }) = _Extras;

  factory Extras.fromJson(Map<String, dynamic> json) => _$ExtrasFromJson(json);
}

@freezed
class Personal with _$Personal {
  const factory Personal({
    String? birthday,
    String? nationality,
    String? location,
    String? github,
    String? website,
    String? main,
  }) = _Personal;

  factory Personal.fromJson(Map<String, dynamic> json) =>
      _$PersonalFromJson(json);
}

@freezed
class Skills with _$Skills {
  const factory Skills({
    required String title,
    required List<SkillContent> content,
  }) = _Skills;

  factory Skills.fromJson(Map<String, dynamic> json) => _$SkillsFromJson(json);
}

@freezed
class SkillContent with _$SkillContent {
  const factory SkillContent({
    required String label,
    required int grade,
  }) = _SkillContent;

  factory SkillContent.fromJson(Map<String, dynamic> json) =>
      _$SkillContentFromJson(json);
}
