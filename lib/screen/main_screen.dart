import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:rphu/theme.dart';

import 'create_screen.dart';
import 'delete_screen.dart';
import 'home_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int currentIndex = 0;

  Widget bottomNav() {
    return ClipRRect(
      child: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (value) {
          print(value);
          setState(() {
            currentIndex = value;
          });
        },
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/home_fill.svg',
              // ignore: deprecated_member_use
              color: currentIndex == 0 ? greyColor3 : greyColor2,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/plus_fill (1).svg',
              // ignore: deprecated_member_use
              color: currentIndex == 1 ? greyColor3 : greyColor2,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/delete_fill.svg',
              // ignore: deprecated_member_use
              color: currentIndex == 2 ? greyColor3 : greyColor2,
            ),
            label: '',
          ),
        ],
      ),
    );
  }

  Widget main() {
    currentIndex = currentIndex;
    switch (currentIndex) {
      case 0:
        return const HomeScreen();
        // ignore: dead_code
        break;
      case 1:
        return const CreateScreen();
        // ignore: dead_code
        break;
      case 2:
        return const DeleteScreen();
        // ignore: dead_code
        break;
      default:
        return const HomeScreen();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      body: main(),
      bottomNavigationBar: bottomNav(),
    );
  }
}
