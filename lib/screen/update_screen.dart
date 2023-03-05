import 'package:flutter/material.dart';
import 'package:rphu/theme.dart';

class UpdateScreen extends StatelessWidget {
  const UpdateScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return PreferredSize(
        preferredSize: const Size.fromHeight(50),
        child: AppBar(
          automaticallyImplyLeading: true,
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.chevron_left,
              color: blackColor,
            ),
          ),
          backgroundColor: whiteColor,
          elevation: 1,
          title: Text(
            'Update Unggas',
            style: blackText5,
          ),
        ),
      );
    }

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

    Widget updateForm() {
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
                      hintText: 'Kepala Ayam',
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
                      hintText: '1078 kg',
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
    Widget btnUpdate() {
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
              Navigator.pushNamed(context, '/update');
            },
            // ignore: sort_child_properties_last
            child: Text(
              'Update',
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

    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            header(),
            headerText(),
            updateForm(),
            btnUpdate(),
          ],
        ),
      ),
    );
  }
}
