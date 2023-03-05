import 'package:flutter/material.dart';
import 'package:rphu/theme.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  final _formKey = GlobalKey<FormState>();
  late String _email, _password;

  @override
  Widget build(BuildContext context) {
    // ignore: unused_element
    Widget headerLogo() {
      return Container(
        margin: const EdgeInsets.only(
          top: 20,
        ),
        child: Center(
          child: Image.asset(
            'assets/logo.png',
            height: 150,
          ),
        ),
      );
    }

    // ignore: unused_element
    Widget headerText() {
      return Container(
        margin: const EdgeInsets.only(
          top: 30,
          left: 20,
          right: 20,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Login',
              style: blackText1,
            ),
            const SizedBox(
              height: 2,
            ),
            Text.rich(
              TextSpan(
                  text: 'Silahkan login dengan akun yang terdaftar',
                  style: blackText6),
            ),
          ],
        ),
      );
    }

    // ignore: unused_element
    Widget form() {
      return Container(
        margin: const EdgeInsets.only(
          top: 30,
          left: 20,
          right: 20,
        ),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Email',
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
                    decoration: const InputDecoration(
                      hintText: '',
                      border: InputBorder.none,
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Email harus diisi";
                      }
                      return null;
                    },
                    onSaved: (value) => _email = value!,
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                'Password',
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
                    obscureText: true,
                    decoration: const InputDecoration(
                      hintText: '',
                      border: InputBorder.none,
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Tolong Diisi";
                      }
                      return null;
                    },
                    onSaved: (value) => _password = value!,
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    }

    // ignore: unused_element
    Widget btnLogin() {
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
              if (_formKey.currentState!.validate()) {
                _formKey.currentState!.save();
                Navigator.pushNamed(context, '/main');
              }
            },
            // ignore: sort_child_properties_last
            child: Text(
              'Login',
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

    // ignore: unused_element
    Widget btnRegister() {
      return Container(
        margin: const EdgeInsets.only(
          top: 10,
          left: 20,
          right: 20,
          bottom: 20,
        ),
        child: Container(
          height: 60,
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
          ),
          child: ElevatedButton(
            onPressed: () {},
            // ignore: sort_child_properties_last
            child: Text(
              'Register',
              style: whiteText,
            ),
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(
                greyColor3,
              ),
              shape: MaterialStateProperty.all(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
          ),
        ),
      );
    }

    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: ListView(
          children: [
            headerLogo(),
            headerText(),
            form(),
            btnLogin(),
            btnRegister(),
          ],
        ),
      ),
    );
  }
}
