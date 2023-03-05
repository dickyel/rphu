import 'package:flutter/material.dart';
import 'package:rphu/theme.dart';

class CreateScreen extends StatefulWidget {
  const CreateScreen({super.key});

  @override
  State<CreateScreen> createState() => _CreateScreenState();
}

class _CreateScreenState extends State<CreateScreen> {
  @override
  Widget build(BuildContext context) {
    Widget headerText() {
      return Container(
        margin: const EdgeInsets.only(
          top: 60,
          left: 20,
          right: 20,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Tambahkan Unggas',
              style: greyText3,
            ),
            const SizedBox(
              height: 2,
            ),
            Text.rich(
              TextSpan(
                  text:
                      'Ayo tambahkan unggas mu agar lebih banyak\npendapatan mu',
                  style: blackText6),
            ),
          ],
        ),
      );
    }

    Widget createForm() {
      return Container(
        margin: const EdgeInsets.only(
          top: 30,
          left: 20,
          right: 20,
        ),
        child: Form(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Nama Unggas',
                style: blackText4,
              ),
              const SizedBox(
                height: 2,
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: greyColor1,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: TextFormField(
                    obscureText: true,
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 18,
              ),
              Text(
                'Kuantitas',
                style: blackText4,
              ),
              const SizedBox(
                height: 2,
              ),
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: greyColor1,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: TextFormField(
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    }

    // ignore: unused_element
    Widget btnCreate() {
      return Container(
        margin: const EdgeInsets.only(
          top: 30,
          left: 20,
          right: 20,
        ),
        child: Container(
          height: 60,
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
          ),
          child: ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/main');
            },
            // ignore: sort_child_properties_last
            child: Text(
              'Tambahkan',
              style: whiteText,
            ),
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(
                  redColor,
                ),
                shape: MaterialStateProperty.all(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                )),
          ),
        ),
      );
    }

    return ListView(
      children: [
        headerText(),
        createForm(),
        btnCreate(),
      ],
    );
  }
}
