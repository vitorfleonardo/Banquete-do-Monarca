import 'package:banquete_do_monarca/pages/MenusLaterais/destaques_page.dart';

import 'package:flutter/material.dart';

class StoryPage extends StatelessWidget {
  final Object? usuario;
  const StoryPage({this.usuario, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Scaffold(
        body: LayoutBuilder(
          builder: (context, constraint) {
            return Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                image: AssetImage(
                  "assets/images/Storytelling.jpeg",
                ),
                fit: BoxFit.fill,
              )),
            );
          },
        ),
      ),
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => HomePage(
                  users: usuario,
                )));
      },
    );
  }
}
