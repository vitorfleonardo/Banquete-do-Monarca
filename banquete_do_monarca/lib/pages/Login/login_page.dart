import 'dart:math';
import 'package:banquete_do_monarca/pages/MenusLaterais/home_page.dart';
import 'package:banquete_do_monarca/pages/Storytelling/story_page.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    bool isSwitched = false;
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraint) {
          var largura = constraint.maxWidth;
          return Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  "assets/images/background_CPF.png",
                ),
                fit: BoxFit.cover,
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                        width: 400,
                        height: 300,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(
                              "assets/images/fundo_digitar1.png",
                            ),
                            fit: BoxFit.cover,
                          ),
                        ),
                        padding: const EdgeInsets.all(40),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                const Text(
                                  "Digite seu CPF.",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 40,
                                      fontFamily: 'awesomeLathusca'),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 10),
                                  child: Container(
                                    width: 300,
                                    // brasil_fields 1.9.0 
                                    child: TextFormField(
                                      decoration: const InputDecoration(
                                        labelText: 'CPF',
                                        labelStyle: TextStyle(
                                            color: Color.fromARGB(
                                                255, 243, 243, 243)),
                                        enabledBorder: UnderlineInputBorder(
                                            borderSide: BorderSide(
                                                color: Color.fromARGB(
                                                    255, 163, 120, 0))),
                                      ),
                                      style: const TextStyle(
                                          color: Color.fromARGB(
                                              255, 255, 255, 255)),
                                      keyboardType: TextInputType.number,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 40),
                                  child: ElevatedButton(
                                    child: const Text('COMECAR',
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontFamily: 'awesomeLathusca')),
                                    style: ElevatedButton.styleFrom(
                                      primary: Color.fromARGB(255, 107, 93, 67),
                                      onPrimary:
                                          Color.fromARGB(255, 255, 255, 255),
                                      shape: const BeveledRectangleBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(5))),
                                    ),
                                    onPressed: () {
                                      Navigator.of(context).push(
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  StoryPage()));
                                    },
                                  ),
                                ),
                              ],
                            )
                          ],
                        )),
                    Image.asset(
                      "assets/images/logo1.png",
                      width: 170,
                      height: 170,
                    ),
                  ],
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
