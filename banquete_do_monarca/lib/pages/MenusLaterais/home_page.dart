//import 'dart:html';
import 'package:flutter/material.dart';
import '../../components.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isImage1 = false;
  bool isImage2 = false;
  bool isImage3 = false;
  bool isImage4 = false;
  bool isImage5 = false;
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
    String segundo = "assets/burgers/segundoPP-normal.png";
    String segundoSelecionado = "assets/burgers/segundoPP-selecionado.png";
    String terceiro = "assets/burgers/terceiroPP-normal.png";
    String terceiroSelecionado = "assets/burgers/terceiroPP-selecionado.png";
    String quarto = "assets/burgers/quartoPP-normal.png";
    String quartoSelecionado = "assets/burgers/quartoPP-selecionado.png";
    String quinto = "assets/burgers/quintoPP-normal.png";
    String quintoSelecionado = "assets/burgers/quintoPP-selecionado.png";
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
                      child: isImage1 == false
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
                        isImage1 = !isImage1;
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
                      child: isImage2 == false
                          ? Image.asset(
                              segundo,
                              fit: BoxFit.fill,
                            )
                          : Image.asset(
                              segundoSelecionado,
                              fit: BoxFit.fill,
                            ),
                    ),
                    onTap: () {
                      setState(() {
                        isImage2 = !isImage2;
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
                      child: isImage3 == false
                          ? Image.asset(
                              terceiro,
                              fit: BoxFit.fill,
                            )
                          : Image.asset(
                              terceiroSelecionado,
                              fit: BoxFit.fill,
                            ),
                    ),
                    onTap: () {
                      setState(() {
                        isImage3 = !isImage3;
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
                      child: isImage4 == false
                          ? Image.asset(
                              quarto,
                              fit: BoxFit.fill,
                            )
                          : Image.asset(
                              quartoSelecionado,
                              fit: BoxFit.fill,
                            ),
                    ),
                    onTap: () {
                      setState(() {
                        isImage4 = !isImage4;
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
                      child: isImage5 == false
                          ? Image.asset(
                              quinto,
                              fit: BoxFit.fill,
                            )
                          : Image.asset(
                              quintoSelecionado,
                              fit: BoxFit.fill,
                            ),
                    ),
                    onTap: () {
                      setState(() {
                        isImage5 = !isImage5;
                      });
                    },
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
