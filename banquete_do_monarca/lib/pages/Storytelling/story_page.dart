import 'package:banquete_do_monarca/pages/MenusLaterais/destaques_page.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
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
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => const HomePage()));
      },
    );
  }
}
