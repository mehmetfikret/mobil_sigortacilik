import 'package:flutter/material.dart';
import 'package:flutter_sigorta/home/home.dart';
import 'package:flutter_sigorta/myPolicies/myPolicies.dart';
import 'package:flutter_sigorta/profile/profilePage.dart';
import 'package:flutter_sigorta/search/search.dart';
import 'package:google_nav_bar/google_nav_bar.dart';


class ModernBottomNavnar extends StatefulWidget {
  const ModernBottomNavnar({super.key});

  @override
  State<ModernBottomNavnar> createState() => _ModernBottomNavnarState();
}

class _ModernBottomNavnarState extends State<ModernBottomNavnar> {
  int _selectIndex = 0;
  void _navigateBottomBar(int index) {
    setState(() {
      _selectIndex = index;
      debugPrint(_selectIndex.toString());
    });
  }

  final List<Widget> _pages = [
    
    const Home(),
    const Search(),
    const MyPolicies(),
    const ProfilePage()
  ];
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: _pages[_selectIndex],
    bottomNavigationBar: GNav(
    selectedIndex: _selectIndex,
    onTabChange: _navigateBottomBar,
    backgroundColor: Colors.white,
    tabBorder: Border.all(width: 1, color: Colors.transparent),
    tabs: [
      GButton(
        icon: Icons.home,               
                text: "Ana Sayfa",
                gap: 8,
                iconColor: Colors.black.withOpacity(0.7),
                iconActiveColor: Colors.deepPurple,
                textColor: Colors.deepPurple,
                backgroundGradient: LinearGradient(
                  begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Colors.white.withOpacity(0.4),
                 Colors.purple.withOpacity(0.4)
              ]
                ),
                padding: const EdgeInsets.all(16),
      ),
      GButton(
        icon: Icons.search_outlined,               
                text: "Arama",
                gap: 8,
                iconColor: Colors.black.withOpacity(0.7),
                iconActiveColor: Colors.deepPurple,
                textColor: Colors.deepPurple,
                backgroundGradient: LinearGradient(
                  begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Colors.white.withOpacity(0.2),
                 Colors.purple.withOpacity(0.4)
              ]
                ),
                padding: const EdgeInsets.all(16),
      ),
      GButton(
        icon: Icons.verified_user_sharp,               
                text: "Poliçelerim",
                gap: 8,
                iconColor: Colors.black.withOpacity(0.7),
                iconActiveColor: Colors.deepPurple,
                textColor: Colors.deepPurple,
               backgroundGradient: LinearGradient(
                  begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Colors.white.withOpacity(0.4),
                 Colors.purple.withOpacity(0.4)
              ]
                ),
                padding: const EdgeInsets.all(16),
      ),
      GButton(
        icon: Icons.account_circle,               
                text: "Profil",
                gap: 8,
                iconColor: Colors.black.withOpacity(0.7),
                iconActiveColor: Colors.deepPurple,
                textColor: Colors.deepPurple,
                backgroundGradient: LinearGradient(
                  begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Colors.white.withOpacity(0.4),
                 Colors.purple.withOpacity(0.4)
              ]
                ),
                padding: const EdgeInsets.all(16),
      ),
    ],
    
    ),
        
    );
      
    
  }

}
