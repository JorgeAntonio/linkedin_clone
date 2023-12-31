import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:linked_unap/screen/pages/home_page/home_page.dart';
import 'package:responsive_builder/responsive_builder.dart';

class MobileScreen extends StatefulWidget {
  const MobileScreen({super.key});

  @override
  State<MobileScreen> createState() => _MobileScreenState();
}

class _MobileScreenState extends State<MobileScreen> {
  int _currentIndex = 0;
  final List<Widget> _children = [
    const HomeScreen(),
    const HomeScreen(),
    const HomeScreen(),
    const HomeScreen(),
    const HomeScreen(),
  ];
  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (BuildContext context, SizingInformation sizingInformation) {
        return SafeArea(
          child: Scaffold(
            bottomNavigationBar: BottomNavigationBar(
              unselectedItemColor: Colors.grey,
              selectedItemColor: Colors.black,

              onTap: onTabTapped, // new
              currentIndex: _currentIndex, // new
              items: const [
                BottomNavigationBarItem(
                  icon: Icon(
                    FontAwesomeIcons.house,
                  ),
                  label: 'Home',
                ),
                BottomNavigationBarItem(
                  icon: Icon(
                    FontAwesomeIcons.userGroup,
                  ),
                  label: 'My network',
                ),
                BottomNavigationBarItem(
                    icon: Icon(
                      FontAwesomeIcons.circlePlus,
                    ),
                    label: 'Post'),
                BottomNavigationBarItem(
                    icon: Icon(
                      FontAwesomeIcons.solidBell,
                    ),
                    label: 'Notifications'),
                BottomNavigationBarItem(
                    icon: Icon(
                      FontAwesomeIcons.briefcase,
                    ),
                    label: 'Jobs')
              ],
            ),
            body: _children[_currentIndex],
          ),
        );
      },
    );
  }
}
