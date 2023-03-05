import 'package:flutter/material.dart';
import 'package:rphu/theme.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DeleteScreen extends StatelessWidget {
  const DeleteScreen({super.key});

  @override
  Widget build(BuildContext context) {
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
            Column(
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
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(
                      'assets/update_fill.png',
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

    return ListView(
      children: [
        file(),
        file(),
        file(),
        file(),
        file(),
      ],
    );
  }
}
