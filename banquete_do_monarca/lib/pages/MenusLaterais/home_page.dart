//import 'dart:html';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

import '../../components.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final List<String> imgList = [
      "assets/posters/primeiro-GG.png",
      "assets/posters/segundo-GG.png",
      "assets/posters/terceiro-GG.png",
      "assets/posters/quarto-GG.png",
      "assets/posters/quinto-GG.png",
    ];
    final List<Widget> imageSliders = imgList
        .map(
          (item) => Container(
            margin: const EdgeInsets.all(5.0),
            child: ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(5.0)),
                child: Stack(
                  children: <Widget>[
                    Image.network(item, fit: BoxFit.cover),
                  ],
                )),
          ),
        )
        .toList();
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraint) {
          return Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  "assets/images/background-madeira.png",
                ),
                fit: BoxFit.fill,
              ),
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    MenuLateral(),
                    Column(
                      children: [
                        barraDestaques(imageSliders: imageSliders),
                        // Container(
                        //   width: 100,
                        //   height: 100,
                        //   decoration: const BoxDecoration(
                        //     color: Color.fromARGB(255, 255, 255, 255),
                        //   ),
                        // )
                      ],
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
