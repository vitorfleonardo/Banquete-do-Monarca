//import 'dart:html';
import 'package:flutter/material.dart';
import '../../components.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isImage = false;
  @override
  Widget build(BuildContext context) {
    final List<String> imgList = [
      "assets/posters/primeiro-GG.png",
      "assets/posters/segundo-GG.png",
      "assets/posters/terceiro-GG.png",
      "assets/posters/quarto-GG.png",
      "assets/posters/quinto-GG.png",
    ];
    String primeiro = "assets/burgers/primeiroPP-normal.png";
    String primeiroSelecionado = "assets/burgers/primeiroPP-selecionado.png";
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
          return Stack(
            children: <Widget>[
              Container(
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      "assets/images/background-madeira.png",
                    ),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.13,
                    height: MediaQuery.of(context).size.height * 0.11,
                    decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 50, 91, 124),
                    ),
                  )
                ],
              ),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      MenuLateral(),
                      Column(
                        children: [
                          barraDestaques(imageSliders: imageSliders),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  botaoAdicionar(context),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  GestureDetector(
                    child: Container(
                      margin: EdgeInsets.only(
                        top: MediaQuery.of(context).size.height * 0.667,
                        left: MediaQuery.of(context).size.width * 0.155,
                      ),
                      width: MediaQuery.of(context).size.width * 0.14,
                      height: MediaQuery.of(context).size.height * 0.22,
                      child: isImage == false
                          ? Image.asset(
                              primeiro,
                              fit: BoxFit.fill,
                            )
                          : Image.asset(
                              primeiroSelecionado,
                              fit: BoxFit.fill,
                            ),
                    ),
                    onTap: () {
                      setState(() {
                        isImage = !isImage;
                      });
                    },
                  ),
                  GestureDetector(
                    child: Container(
                      margin: EdgeInsets.only(
                        top: MediaQuery.of(context).size.height * 0.667,
                        left: MediaQuery.of(context).size.width * 0.03,
                      ),
                      width: MediaQuery.of(context).size.width * 0.14,
                      height: MediaQuery.of(context).size.height * 0.22,
                      child: Image.asset("assets/burgers/segundoPP-normal.png",
                          fit: BoxFit.fill),
                    ),
                  ),
                  GestureDetector(
                    child: Container(
                      margin: EdgeInsets.only(
                        top: MediaQuery.of(context).size.height * 0.667,
                        left: MediaQuery.of(context).size.width * 0.03,
                      ),
                      width: MediaQuery.of(context).size.width * 0.14,
                      height: MediaQuery.of(context).size.height * 0.22,
                      child: Image.asset("assets/burgers/terceiroPP-normal.png",
                          fit: BoxFit.fill),
                    ),
                  ),
                  GestureDetector(
                    child: Container(
                      margin: EdgeInsets.only(
                        top: MediaQuery.of(context).size.height * 0.667,
                        left: MediaQuery.of(context).size.width * 0.03,
                      ),
                      width: MediaQuery.of(context).size.width * 0.14,
                      height: MediaQuery.of(context).size.height * 0.22,
                      child: Image.asset("assets/burgers/quartoPP-normal.png",
                          fit: BoxFit.fill),
                    ),
                  ),
                  GestureDetector(
                    child: Container(
                      margin: EdgeInsets.only(
                        top: MediaQuery.of(context).size.height * 0.667,
                        left: MediaQuery.of(context).size.width * 0.03,
                      ),
                      width: MediaQuery.of(context).size.width * 0.14,
                      height: MediaQuery.of(context).size.height * 0.22,
                      child: Image.asset("assets/burgers/quintoPP-normal.png",
                          fit: BoxFit.fill),
                    ),
                  ),
                ],
              )
            ],
          );
        },
      ),
    );
  }
}
