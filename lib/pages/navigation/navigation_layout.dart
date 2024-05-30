import 'package:flutter/material.dart';
import 'package:home_page/pages/home/home.dart';
import 'package:home_page/pages/projects/projects.dart';
import 'package:home_page/pages/about_us/about_us.dart';
import 'package:home_page/pages/customer_support/customer_support.dart';

class NavigationLayout extends StatefulWidget {
  final int initialIndex;

  NavigationLayout({this.initialIndex = 0});

  @override
  _NavigationLayoutState createState() => _NavigationLayoutState();
}

class _NavigationLayoutState extends State<NavigationLayout> {
  late int _selectedIndex;

  @override
  void initState() {
    super.initState();
    _selectedIndex = widget.initialIndex;
  }

  static final List<Widget> _widgetOptions = <Widget>[
    const HomePage(),
    ProjectsPage(),
    const AboutUsPage(),
    const CustomerSupportPage(),
    // 추가 페이지들
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
    Navigator.pop(context); // Drawer를 닫기 위해 pop
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text(
                'Navigation Menu',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            _buildDrawerItem(
              icon: Icons.home,
              text: 'Home',
              index: 0,
            ),
            _buildDrawerItem(
              icon: Icons.work,
              text: 'Projects',
              index: 1,
            ),
            _buildDrawerItem(
              icon: Icons.info,
              text: 'About Us',
              index: 2,
            ),
            _buildDrawerItem(
              icon: Icons.support,
              text: 'Customer Support',
              index: 3,
            ),
            // 추가 네비게이션 아이템
          ],
        ),
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
    );
  }

  Widget _buildDrawerItem({
    required IconData icon,
    required String text,
    required int index,
  }) {
    return ListTile(
      leading: Icon(icon),
      title: Text(text),
      selected: _selectedIndex == index,
      onTap: () => _onItemTapped(index),
    );
  }
}
