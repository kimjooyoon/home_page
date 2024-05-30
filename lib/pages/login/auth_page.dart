import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:home_page/atoms/spacer/spacer.dart'; // VerticalSpacer 임포트

class AuthPage extends StatefulWidget {
  @override
  _AuthPageState createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            'assets/images/login.png', // 배경 이미지 추가
            fit: BoxFit.cover,
          ),
          Container(
            color: Colors.black.withOpacity(0.5), // 반투명 레이어 추가
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SvgPicture.asset(
                    'assets/images/logo.svg', // 로고 이미지 추가
                    height: 100,
                  ),
                  const VerticalSpacer(height: 32.0), // 로고와 탭 사이의 여백 추가
                  TabBar(
                    controller: _tabController,
                    indicatorColor: Colors.white,
                    tabs: [
                      Tab(text: 'Login'),
                      Tab(text: 'Sign Up'),
                    ],
                  ),
                  Expanded(
                    child: TabBarView(
                      controller: _tabController,
                      children: [
                        _buildLoginForm(),
                        _buildSignUpForm(),
                      ],
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

  Widget _buildLoginForm() {
    return Column(
      children: [
        const VerticalSpacer(height: 16.0), // 탭과 폼 사이의 여백 추가
        TextField(
          decoration: InputDecoration(
            labelText: 'Email',
            fillColor: Colors.white.withOpacity(0.8),
            filled: true,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8.0),
              borderSide: BorderSide.none,
            ),
          ),
        ),
        const VerticalSpacer(height: 16.0),
        TextField(
          obscureText: true,
          decoration: InputDecoration(
            labelText: 'Password',
            fillColor: Colors.white.withOpacity(0.8),
            filled: true,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8.0),
              borderSide: BorderSide.none,
            ),
          ),
        ),
        const VerticalSpacer(height: 32.0),
        ElevatedButton(
          onPressed: () {
            Navigator.pushReplacementNamed(context, '/navigation');
          },
          child: const Text('Login'),
        ),
      ],
    );
  }

  // _buildSignUpForm() 메서드 수정
  Widget _buildSignUpForm() {
    final nameController = TextEditingController();
    final emailController = TextEditingController();
    final passwordController = TextEditingController();

    return Column(
      children: [
        VerticalSpacer(height: 16.0), // 탭과 폼 사이의 여백 추가
        TextField(
          controller: nameController,
          decoration: InputDecoration(
            labelText: 'Name',
            fillColor: Colors.white.withOpacity(0.8),
            filled: true,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8.0),
              borderSide: BorderSide.none,
            ),
          ),
        ),
        VerticalSpacer(height: 16.0),
        TextField(
          controller: emailController,
          decoration: InputDecoration(
            labelText: 'Email',
            fillColor: Colors.white.withOpacity(0.8),
            filled: true,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8.0),
              borderSide: BorderSide.none,
            ),
          ),
        ),
        VerticalSpacer(height: 16.0),
        TextField(
          controller: passwordController,
          obscureText: true,
          decoration: InputDecoration(
            labelText: 'Password',
            fillColor: Colors.white.withOpacity(0.8),
            filled: true,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8.0),
              borderSide: BorderSide.none,
            ),
          ),
        ),
        VerticalSpacer(height: 32.0),
        ElevatedButton(
          onPressed: () {
            // 회원가입 로직
            // 서버와 통신하여 회원가입 처리
            // 예:
            // signUp(nameController.text, emailController.text, passwordController.text);
            Navigator.pushReplacementNamed(context, '/navigation');
          },
          child: Text('Sign Up'),
        ),
      ],
    );
  }
}
