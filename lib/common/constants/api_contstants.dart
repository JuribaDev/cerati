// ignore_for_file: library_private_types_in_public_api

class ApiConstants {

  factory ApiConstants() {
    return _instance;
  }

  ApiConstants._privateConstructor();

  static final ApiConstants _instance = ApiConstants._privateConstructor();

  final _Auth auth = _Auth();
  final _SocialMediaLink socialMediaLink = _SocialMediaLink();
  final _Skill skill = _Skill();
  final _Education education = _Education();
  final _Project project = _Project();
  final _Profile profile = _Profile();
  final _Experience experience = _Experience();
}

class _Auth {
  String login = 'register';
  String register = 'login';
  String logout = 'user/logout';
  String getUserAccount = 'user/user-account';
  String updateUserAccount = 'user/update-user-account';
  String updateUserPassword = 'user/update-user-password';
}

class _SocialMediaLink {
  String getSocialMediaLink = 'user/s-m-link';
  String createSocialMediaLink = 'user/s-m-link';

  String updateSocialMediaLink({required int sMLinkId}) => 'user/s-m-link/$sMLinkId';

  String deleteSocialMediaLink({required int sMLinkId}) => 'user/s-m-link/$sMLinkId';
}

class _Skill {
  String getSkills = 'user/skill';
  String createSkill = 'user/skill';

  String updateSkill({required int skillId}) => 'user/skill/$skillId';

  String deleteSkill({required int skillId}) => 'user/skill/$skillId';
}

class _Education {
  String getEducations = 'user/education';
  String createEducation = 'user/education';

  String updateEducation({required int educationId}) => 'user/education/$educationId';

  String deleteEducation({required int educationId}) => 'user/education/$educationId';
}

class _Project {
  String getProjects = 'user/project';
  String createProject = 'user/project';

  String updateProject({required int projectId}) => 'user/project/$projectId';

  String deleteProject({required int projectId}) => 'user/project/$projectId';

  String attachImageToProject(int id) => 'user/project/$id/upload-image';

  String deleteImageFromProject({required int projectId, required int imageId}) =>
      'user/project/$projectId/destroy-image/$imageId';

  String attachFileToProject(int id) => 'user/project/$id/upload-file';

  String deleteFileFromProject({required int projectId, required int fileId}) =>
      'user/project/$projectId/destroy-file/$fileId';
}

class _Profile {
  String getGlobalProfile = 'user/user-global-profile';
  String createProfile = 'user/profile';

  String updateProfile({required int profileId}) => 'user/profile/$profileId';

  String deleteProfile({required int profileId}) => 'user/profile/$profileId';
}

class _Experience {
  String createExperience = 'user/experience';
  String getExperiences = 'user/experience';

  String getOneExperience({required int experienceId}) => 'user/experience/$experienceId';

  String updateExperience({required int experienceId}) => 'user/experience/$experienceId';

  String deleteExperience({required int experienceId}) => 'user/experience/$experienceId';
}

class _Certificate {
  String createCertificate = 'user/certificate';
  String getCertificates = 'user/certificate';

  String getOneCertificate({required int certificateId}) => 'user/certificate/$certificateId';

  String updateCertificate({required int certificateId}) => 'user/certificate/$certificateId';

  String deleteCertificate({required int certificateId}) => 'user/certificate/$certificateId';
}
