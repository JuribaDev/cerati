import 'package:cerati/common/constants/api_constants.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('ApiConstants Test', () {
    test('Verify Auth Endpoints', () {
      final auth = ApiConstants.auth;

      expect(auth.login, 'login');
      expect(auth.register, 'register');
      expect(auth.logout, 'user/logout');
      expect(auth.getUserAccount, 'user/user-account');
      expect(auth.updateUserAccount, 'user/update-user-account');
      expect(auth.updateUserPassword, 'user/update-user-password');
    });

    test('Verify Website Endpoints', () {
      final website = ApiConstants.website;

      expect(website.createWebsite, 'user/website');
      expect(website.getAllWebsites, 'user/website');
      expect(website.getWebsiteById(websiteId: 1), 'user/website/1');
    });

    test('Verify SocialMediaLink Endpoints', () {
      final socialMediaLink = ApiConstants.socialMediaLink;

      expect(socialMediaLink.getSocialMediaLink, 'user/s-m-link');
      expect(socialMediaLink.createSocialMediaLink, 'user/s-m-link');
      expect(socialMediaLink.updateSocialMediaLink(sMLinkId: 1), 'user/s-m-link/1');
      expect(socialMediaLink.deleteSocialMediaLink(sMLinkId: 1), 'user/s-m-link/1');
    });

    test('Verify Skill Endpoints', () {
      final skill = ApiConstants.skill;

      expect(skill.getSkills, 'user/skill');
      expect(skill.createSkill, 'user/skill');
      expect(skill.updateSkill(skillId: 1), 'user/skill/1');
      expect(skill.deleteSkill(skillId: 1), 'user/skill/1');
    });

    test('Verify Profile Endpoints', () {
      final profile = ApiConstants.profile;

      expect(profile.createProfile, 'user/profile');
      expect(profile.getGlobalProfile, 'user/user-global-profile');
      expect(profile.updateProfile(profileId: 1), 'user/profile/1');
      expect(profile.deleteProfile(profileId: 1), 'user/profile/1');
    });

    test('Verify Education Endpoints', () {
      final education = ApiConstants.education;

      expect(education.createEducation, 'user/education');
      expect(education.getEducations, 'user/education');
      expect(education.updateEducation(educationId: 1), 'user/education/1');
      expect(education.deleteEducation(educationId: 1), 'user/education/1');
    });

    test('Verify Project Endpoints', () {
      final project = ApiConstants.project;

      expect(project.createProject, 'user/project');
      expect(project.getProjects, 'user/project');
      expect(project.getOneProject(projectId: 1), 'user/project/1');
      expect(project.updateProject(projectId: 1), 'user/project/1');
      expect(project.deleteProject(projectId: 1), 'user/project/1');
      expect(project.attachFileToProject(projectId: 1), 'user/project/1/upload-file');
      expect(project.attachImageToProject(projectId: 1), 'user/project/1/upload-image');
      expect(project.deleteImageFromProject(projectId: 1, imageId: 1), 'user/project/1/destroy-image/1');
      expect(project.deleteFileFromProject(projectId: 1, fileId: 1), 'user/project/1/destroy-file/1');
    });

    test('Verify Experience Endpoints', () {
      final experience = ApiConstants.experience;

      expect(experience.createExperience, 'user/experience');
      expect(experience.getExperiences, 'user/experience');
      expect(experience.getOneExperience(experienceId: 1), 'user/experience/1');
      expect(experience.updateExperience(experienceId: 1), 'user/experience/1');
      expect(experience.deleteExperience(experienceId: 1), 'user/experience/1');
    });

    test('Verify Certificate Endpoints', () {
      final certificate = ApiConstants.certificate;

      expect(certificate.createCertificate, 'user/certificate');
      expect(certificate.getCertificates, 'user/certificate');
      expect(certificate.getOneCertificate(certificateId: 1), 'user/certificate/1');
      expect(certificate.updateCertificate(certificateId: 1), 'user/certificate/1');
      expect(certificate.deleteCertificate(certificateId: 1), 'user/certificate/1');
    });
  });
}
