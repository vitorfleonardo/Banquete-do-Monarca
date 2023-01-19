import 'package:flutter/material.dart';
import 'package:banquete_do_monarca/pages/Storytelling/story_page.dart';
import '../../components/components.dart';

class CardapioPage extends StatefulWidget {
  const CardapioPage({Key? key}) : super(key: key);

  @override
  State<CardapioPage> createState() => _CardapioPageState();
}

class _CardapioPageState extends State<CardapioPage> {
  @override
  Widget build(BuildContext context) {
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
              SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.only(
                        top: MediaQuery.of(context).size.height * 0.125,
                        left: MediaQuery.of(context).size.height * 0.400,
                      ),
                      width: MediaQuery.of(context).size.width * 0.75,
                      height: MediaQuery.of(context).size.height * 0.50,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assets/imagens_cardapio/6.png"),
                          fit: BoxFit.fill,
                        ),
                      ),
                      child: Row(children: [
                        GestureDetector(
                          child: Container(
                            margin: EdgeInsets.only(
                              top: MediaQuery.of(context).size.height * 0.27,
                              left: MediaQuery.of(context).size.width * 0.52,
                            ),
                            width: MediaQuery.of(context).size.width * 0.2,
                            height: MediaQuery.of(context).size.height * 0.2,
                            child: Image.asset(
                              "assets/imagens_cardapio/11.png",
                              fit: BoxFit.contain,
                            ),
                          ),
                          onTap: () {},
                        ),
                      ]),
                    ),
                    GestureDetector(
                        child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        margin: EdgeInsets.only(
                          left: MediaQuery.of(context).size.height * 0.400,
                        ),
                        width: MediaQuery.of(context).size.width * 0.75,
                        height: MediaQuery.of(context).size.height * 0.50,
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(
                                    "assets/imagens_cardapio/9.png"))),
                        child: Row(children: [
                          GestureDetector(
                            child: Container(
                              margin: EdgeInsets.only(
                                top: MediaQuery.of(context).size.height * 0.27,
                                left: MediaQuery.of(context).size.width * 0.52,
                              ),
                              width: MediaQuery.of(context).size.width * 0.2,
                              height: MediaQuery.of(context).size.height * 0.2,
                              child: Image.asset(
                                "assets/imagens_cardapio/11.png",
                                fit: BoxFit.contain,
                              ),
                            ),
                          ),
                        ]),
                      ),
                    )),
                    GestureDetector(
                        child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        margin: EdgeInsets.only(
                          left: MediaQuery.of(context).size.height * 0.400,
                        ),
                        width: MediaQuery.of(context).size.width * 0.75,
                        height: MediaQuery.of(context).size.height * 0.50,
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(
                                    "assets/imagens_cardapio/7.png"))),
                        child: Row(children: [
                          GestureDetector(
                            child: Container(
                              margin: EdgeInsets.only(
                                top: MediaQuery.of(context).size.height * 0.27,
                                left: MediaQuery.of(context).size.width * 0.52,
                              ),
                              width: MediaQuery.of(context).size.width * 0.2,
                              height: MediaQuery.of(context).size.height * 0.2,
                              child: Image.asset(
                                "assets/imagens_cardapio/11.png",
                                fit: BoxFit.contain,
                              ),
                            ),
                          ),
                        ]),
                      ),
                    )),
                    GestureDetector(
                        child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        margin: EdgeInsets.only(
                          left: MediaQuery.of(context).size.height * 0.400,
                        ),
                        width: MediaQuery.of(context).size.width * 0.75,
                        height: MediaQuery.of(context).size.height * 0.50,
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(
                                    "assets/imagens_cardapio/8.png"))),
                        child: Row(children: [
                          GestureDetector(
                            child: Container(
                              margin: EdgeInsets.only(
                                top: MediaQuery.of(context).size.height * 0.27,
                                left: MediaQuery.of(context).size.width * 0.52,
                              ),
                              width: MediaQuery.of(context).size.width * 0.2,
                              height: MediaQuery.of(context).size.height * 0.2,
                              child: Image.asset(
                                "assets/imagens_cardapio/11.png",
                                fit: BoxFit.contain,
                              ),
                            ),
                          ),
                        ]),
                      ),
                    )),
                    GestureDetector(
                        child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        margin: EdgeInsets.only(
                          left: MediaQuery.of(context).size.height * 0.400,
                        ),
                        width: MediaQuery.of(context).size.width * 0.75,
                        height: MediaQuery.of(context).size.height * 0.50,
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(
                                    "assets/imagens_cardapio/10.png"))),
                        child: Row(children: [
                          GestureDetector(
                            child: Container(
                              margin: EdgeInsets.only(
                                top: MediaQuery.of(context).size.height * 0.27,
                                left: MediaQuery.of(context).size.width * 0.52,
                              ),
                              width: MediaQuery.of(context).size.width * 0.2,
                              height: MediaQuery.of(context).size.height * 0.2,
                              child: Image.asset(
                                "assets/imagens_cardapio/11.png",
                                fit: BoxFit.contain,
                              ),
                            ),
                          ),
                        ]),
                      ),
                    )),
                    GestureDetector(
                        child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        margin: EdgeInsets.only(
                          left: MediaQuery.of(context).size.height * 0.400,
                        ),
                        width: MediaQuery.of(context).size.width * 0.75,
                        height: MediaQuery.of(context).size.height * 0.50,
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(
                                    "assets/imagens_cardapio/5.png"))),
                        child: Row(children: [
                          GestureDetector(
                            child: Container(
                              margin: EdgeInsets.only(
                                top: MediaQuery.of(context).size.height * 0.27,
                                left: MediaQuery.of(context).size.width * 0.52,
                              ),
                              width: MediaQuery.of(context).size.width * 0.2,
                              height: MediaQuery.of(context).size.height * 0.2,
                              child: Image.asset(
                                "assets/imagens_cardapio/11.png",
                                fit: BoxFit.contain,
                              ),
                            ),
                          ),
                        ]),
                      ),
                    )),
                  ],
                ),
              ),
              Column(
                children: [
                  Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [MenuLateral()])
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  botaoAdicionar(context),
                ],
              )
            ],
          );
        },
      ),
    );
  }
}
