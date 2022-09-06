import 'package:freezed_annotation/freezed_annotation.dart';

part 'resume_data.freezed.dart';
part 'resume_data.g.dart';

@freezed
class ResumeData with _$ResumeData {
  const factory ResumeData({
    required String name,
    required String profession,
    @JsonKey(name: 'photo_path') String? photoPath,
    String? profile,
    Personal? personal,
    List<String>? about,
    List<Experience>? experience,
    List<Education>? education,
    @JsonKey(name: 'skills_a') Skill? skillsA,
    @JsonKey(name: 'skills_b') Skill? skillsB,
    @JsonKey(name: 'extras_a') Extra? extrasA,
    @JsonKey(name: 'extras_b') Extra? extrasB,
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
class Extra with _$Extra {
  const factory Extra({
    required String title,
    required List<String> content,
  }) = _Extra;

  factory Extra.fromJson(Map<String, dynamic> json) => _$ExtraFromJson(json);
}

@freezed
class Personal with _$Personal {
  const factory Personal({
    String? birthday,
    String? nationality,
    String? location,
    String? github,
    String? website,
    String? mail,
    String? linkedin,
  }) = _Personal;

  factory Personal.fromJson(Map<String, dynamic> json) =>
      _$PersonalFromJson(json);
}

@freezed
class Skill with _$Skill {
  const factory Skill({
    required String title,
    required List<SkillContent> content,
  }) = _Skill;

  factory Skill.fromJson(Map<String, dynamic> json) => _$SkillFromJson(json);
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
