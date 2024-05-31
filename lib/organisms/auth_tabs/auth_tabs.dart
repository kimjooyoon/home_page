import 'package:flutter/material.dart';
import 'package:home_page/molecules/login_form/login_form.dart';
import 'package:home_page/molecules/sign_up_form/sign_up_form.dart';

class AuthTabs extends StatefulWidget {
  const AuthTabs({super.key});

  @override
  AuthTabsState createState() => AuthTabsState();
}

class AuthTabsState extends State<AuthTabs> with SingleTickerProviderStateMixin {
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
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        TabBar(
          controller: _tabController,
          indicatorColor: Theme.of(context).indicatorColor,
          tabs: const [
            Tab(text: 'Login'),
            Tab(text: 'Sign Up'),
          ],
        ),
        Expanded(
          child: TabBarView(
            controller: _tabController,
            children: [
              LoginForm(
                onLogin: () => Navigator.pushReplacementNamed(context, '/navigation'),
                onGoogleLogin: () {
                  // Google 로그인 로직
                },
              ),
              SignUpForm(
                onSignUp: () => Navigator.pushReplacementNamed(context, '/navigation'),
                onGoogleSignUp: () {
                  // Google 로그인 로직
                },
              ),
            ],
          ),
        ),
      ],
    );
  }
}
