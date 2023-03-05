import 'package:flutter/material.dart';
import 'package:rphu/theme.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        margin: const EdgeInsets.only(
          top: 20,
          right: 20,
          left: 20,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                SvgPicture.asset('assets/avatar.svg'),
                const SizedBox(
                  width: 6,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Muhammad Dikky',
                      style: blackText3,
                    ),
                    Text(
                      'online',
                      style: greenText,
                    ),
                  ],
                )
              ],
            ),
            SvgPicture.asset(
              'assets/logout.svg',
            ),
          ],
        ),
      );
    }

    Widget search() {
      return Container(
        margin: const EdgeInsets.only(
          top: 20,
          left: 20,
          right: 20,
        ),
        width: double.infinity,
        padding: const EdgeInsets.all(10.0),
        height: 40,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: greyColor1,
        ),
        child: TextField(
          decoration: InputDecoration(
            border: InputBorder.none,
            hintText: 'Search...',
            hintStyle: blackText6,
          ),
        ),
      );
    }

    Widget title() {
      return Container(
        margin: const EdgeInsets.only(
          top: 20,
          left: 20,
          right: 20,
        ),
        width: double.infinity,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Postingan Terbaru',
              style: blackText4,
            )
          ],
        ),
      );
    }

    Widget file() {
      return Container(
        margin: const EdgeInsets.only(
          top: 30,
          left: 20,
          right: 20,
        ),
        width: double.infinity,
        padding: const EdgeInsets.all(16.0),
        height: 80,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: greyColor1,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Flexible(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Kepala Ayam',
                    style: blackText3,
                  ),
                  Text(
                    '1 Kg',
                    style: blackText6,
                  ),
                ],
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, '/update');
                      },
                      child: Image.asset(
                        'assets/update_fill.png',
                      ),
                    ),
                    SvgPicture.asset(
                      'assets/delete_screen.svg',
                    ),
                  ],
                )
              ],
            ),
          ],
        ),
      );
    }

    return Container(
      child: ListView(
        children: [
          header(),
          search(),
          title(),
          file(),
          file(),
          file(),
          file(),
        ],
      ),
    );
  }
}
