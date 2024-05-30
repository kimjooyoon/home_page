import 'package:flutter/material.dart';
import 'package:home_page/pages/home/home.dart';
import 'package:home_page/pages/projects/projects.dart';
import 'package:home_page/pages/about_us/about_us.dart';
import 'package:home_page/pages/customer_support/customer_support.dart';
import 'package:home_page/pages/profile/profile_page.dart';
import 'package:home_page/pages/admin/customer_account_management.dart';
import 'package:home_page/pages/admin/admin_customer_communication.dart';
import 'package:home_page/pages/admin/customer_management.dart';
import 'package:home_page/pages/admin/transaction_management.dart';
import 'package:home_page/pages/admin/meeting_details.dart';
import 'package:home_page/pages/admin/dashboard_charts.dart';
import 'package:home_page/services/auth_service.dart';

class NavigationLayout extends StatefulWidget {
  final int initialIndex;
  final bool isAdmin;
  final VoidCallback toggleTheme; // 테마 토글 콜백 함수

  NavigationLayout({
    this.initialIndex = 0,
    required this.isAdmin,
    required this.toggleTheme, // 생성자에 추가
  });

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
    const ProfilePage(),
    CustomerAccountManagementPage(),
    const AdminCustomerCommunicationPage(),
    const CustomerManagementPage(),
    const TransactionManagementPage(),
    const MeetingDetailsPage(),
    const DashboardChartsPage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
    Navigator.pop(context); // Drawer를 닫기 위해 pop
  }

  void _logout() async {
    await AuthService().logout();
    Navigator.pushReplacementNamed(context, '/auth');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
        actions: [
          IconButton(
            icon: Icon(Icons.brightness_6),
            onPressed: widget.toggleTheme,
          ),
        ],
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
            _buildDrawerItem(
              icon: Icons.person,
              text: 'Profile',
              index: 4,
            ),
            if (widget.isAdmin) ...[
              _buildDrawerItem(
                icon: Icons.account_circle,
                text: 'Customer Account Management',
                index: 5,
              ),
              _buildDrawerItem(
                icon: Icons.email,
                text: 'Admin Customer Communication',
                index: 6,
              ),
              _buildDrawerItem(
                icon: Icons.people,
                text: 'Customer Management',
                index: 7,
              ),
              _buildDrawerItem(
                icon: Icons.payment,
                text: 'Transaction Management',
                index: 8,
              ),
              _buildDrawerItem(
                icon: Icons.meeting_room,
                text: 'Meeting Details',
                index: 9,
              ),
              _buildDrawerItem(
                icon: Icons.show_chart,
                text: 'Dashboard Charts',
                index: 10,
              ),
            ],
            const Divider(),
            ListTile(
              leading: Icon(Icons.exit_to_app),
              title: Text('Logout'),
              onTap: _logout,
            ),
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
