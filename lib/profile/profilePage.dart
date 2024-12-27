import 'package:flutter/material.dart';
import 'package:flutter_sigorta/profile/profile_widget.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        color: Colors.white60,
        padding: const EdgeInsets.all(16),
        height: size.height,
        width: size.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 150,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: Colors.black.withOpacity(0.3),
                  width: 5.0,
                ),
              ),
              child: const CircleAvatar(
                radius: 60,
                backgroundImage: ExactAssetImage('assets/images/profiltemsili.png'),
              ),
            ),
            const SizedBox(height: 10),
            SizedBox(
              width: size.width * .4,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Mehmet Fikret",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                    ),
                  ),
                  SizedBox(
                    height: 22,
                    child: Image.asset("assets/images/verified.png"),
                  ),
                ],
              ),
            ),
            Text(
              "mehmetfikret@gmail.com",
              style: TextStyle(
                color: Colors.black.withOpacity(0.3),
              ),
            ),
            const SizedBox(height: 20),
            const Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    ProfileWidget(
                      icon: Icons.person_outline_outlined,
                      title: 'Profilim',
                    ),
                    ProfileWidget(
                      icon: Icons.settings,
                      title: 'Ayarlar',
                    ),
                    ProfileWidget(
                      icon: Icons.warning_amber_outlined,
                      title: 'Hakkımızda',
                    ),
                    ProfileWidget(
                      icon: Icons.help_outline_outlined,
                      title: 'Yardım',
                    ),
                    ProfileWidget(
                      icon: Icons.star_border_purple500_outlined,
                      title: 'Bizi Değerlendirin',
                    ),
                    ProfileWidget(
                      icon: Icons.add_box_outlined,
                      title: 'Geri Bildirim',
                    ),
                    ProfileWidget(
                      icon: Icons.logout,
                      title: 'Çıkış Yap',
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

