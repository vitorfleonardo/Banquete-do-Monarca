import 'package:banquete_do_monarca/pages/Home/home_page.dart';
import 'package:flutter/material.dart';

class StoryPage extends StatelessWidget {
  const StoryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Scaffold(
        body: LayoutBuilder(
          builder: (context, constraint) {
            return Container(
                decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(
                        "assets/images/background_CPF.png",
                      ),
                      fit: BoxFit.cover),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          width: 700,
                          height: 400,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(
                                "assets/images/fundo_digitar.png",
                              ),
                              fit: BoxFit.cover,
                            ),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Column(
                                children: [
                                  Image.asset(
                                    "assets/images/logo1.png",
                                    width: 200,
                                    height: 150,
                                  )
                                  // Text(
                                  //   ""
                                  // )
                                ],
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ));
          },
        ),
      ),
      onTap: () {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => HomePage()));
      },
    );
  }
}
