import 'dart:math';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(children: [
      Container(
        child: Image.asset(
          'assets/images/background_CPF.png',
          fit: BoxFit.cover,
          width: double.infinity,
          height: double.infinity,
        ),
      ),
      Positioned(
        left: 45,
        right: 0,
        bottom: 80,
        child: Image.asset(
          'assets/images/fundo_digitar.png',
        ),
      ),
      Positioned(
          left: 235,
          bottom: 310,
          child: Image.asset('assets/images/digite_cpf.png')),
      Positioned(
          width: 240,
          left: 360,
          bottom: 300,
          child: TextField(
            decoration: InputDecoration(
              hintText: 'CPF',
              hintStyle: TextStyle(color: Color.fromARGB(255, 243, 243, 243)),
              enabledBorder: UnderlineInputBorder(
                  borderSide:
                      BorderSide(color: Color.fromARGB(255, 163, 120, 0))),
            ),
            keyboardType: TextInputType.number,
          )),
      Positioned(
          left: 420,
          bottom: 210,
          child: ElevatedButton(
            child:
                Text('COMEÇAR', style: TextStyle(fontWeight: FontWeight.bold)),
            style: ElevatedButton.styleFrom(
              primary: Color.fromARGB(255, 107, 93, 67),
              onPrimary: Color.fromARGB(255, 255, 255, 255),
              shape: const BeveledRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(5))),
            ),
            onPressed: () {
              print('Pressed');
            },
          )),
      Positioned(
          left: 85,
          right: 0,
          bottom: -280,
          child: Image.asset('assets/images/logo.png'))
    ]));
  }
}
