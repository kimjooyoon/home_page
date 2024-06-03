// pages/profile_page.dart
import 'package:flutter/material.dart';
import 'package:home_page/templates/base/base_template.dart';
import 'package:home_page/organisms/form/profile_form.dart';
import 'package:home_page/models/profile/profile.dart';
import 'package:home_page/services/profile/profile_service.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  ProfilePageState createState() => ProfilePageState();
}

class ProfilePageState extends State<ProfilePage> {
  late Future<Profile> futureProfile;
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final phoneNumberController = TextEditingController();

  @override
  void initState() {
    super.initState();
    futureProfile = ProfileService().fetchProfile(); // Mock 또는 실제 서버 데이터 사용
    futureProfile.then((profile) {
      nameController.text = profile.name;
      emailController.text = profile.email;
      phoneNumberController.text = profile.phoneNumber;
    });
  }

  void _saveProfile() async {
    Profile profile = Profile(
      name: nameController.text,
      email: emailController.text,
      phoneNumber: phoneNumberController.text,
    );
    await ProfileService().saveProfile(profile);
    // 저장 후 필요한 동작 추가 (예: 알림 표시)
  }

  @override
  Widget build(BuildContext context) {
    return BaseTemplate(
      title: 'Profile',
      child: FutureBuilder<Profile>(
        future: futureProfile,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          } else if (!snapshot.hasData) {
            return const Center(child: Text('No profile information available'));
          } else {
            return ProfileForm(
              nameController: nameController,
              emailController: emailController,
              phoneNumberController: phoneNumberController,
              onSave: _saveProfile,
            );
          }
        },
      ),
    );
  }
}
