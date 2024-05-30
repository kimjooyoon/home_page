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
  final double buttonHeight = 50.0; // 버튼 높이를 정의하는 변수
  final double buttonWidth = 300.0; // 버튼 너비를 정의하는 변수

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
      mainAxisSize: MainAxisSize.min,
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
        Container(
          width: buttonWidth,
          height: buttonHeight,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.white, // 버튼 배경색
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.0),
                side: BorderSide(color: Colors.grey), // 테두리 색상 및 두께
              ),
            ),
            onPressed: () {
              Navigator.pushReplacementNamed(context, '/navigation');
            },
            child: const Text(
              'Login',
              style: TextStyle(
                color: Colors.black, // 텍스트 색상
                fontFamily: 'Roboto',
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ),
        const VerticalSpacer(height: 16.0),
        GestureDetector(
          onTap: () {
            // Google 로그인 로직
          },
          child: Container(
            width: buttonWidth,
            height: buttonHeight,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/google_logo.png'),
                fit: BoxFit.contain,
              ),
              borderRadius: BorderRadius.circular(8.0),
              // 테두리 제거
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildSignUpForm() {
    final nameController = TextEditingController();
    final emailController = TextEditingController();
    final passwordController = TextEditingController();

    return Column(
      mainAxisSize: MainAxisSize.min,
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
        Container(
          width: buttonWidth,
          height: buttonHeight,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.white, // 버튼 배경색
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.0),
                side: BorderSide(color: Colors.grey), // 테두리 색상 및 두께
              ),
            ),
            onPressed: () {
              Navigator.pushReplacementNamed(context, '/navigation');
            },
            child: const Text(
              'Sign Up',
              style: TextStyle(
                color: Colors.black, // 텍스트 색상
                fontFamily: 'Roboto',
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ),
        VerticalSpacer(height: 16.0),
        GestureDetector(
          onTap: () {
            // Google 로그인 로직
          },
          child: Container(
            width: buttonWidth,
            height: buttonHeight,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/google_logo.png'),
                fit: BoxFit.contain,
              ),
              borderRadius: BorderRadius.circular(8.0),
              // 테두리 제거
            ),
          ),
        ),
      ],
    );
  }
}
