import 'package:flutter/material.dart';
import 'package:banquete_do_monarca/pages/Login/login_page.dart';
import 'package:banquete_do_monarca/core/app_colors.dart';
import 'package:banquete_do_monarca/pages/Storytelling/story_page.dart';
import 'package:banquete_do_monarca/pages/MenusLaterais/cardapio_page.dart';
import 'package:banquete_do_monarca/pages/MenusLaterais/bebidas_page.dart';
import 'package:banquete_do_monarca/pages/MenusLaterais/mercado_page.dart';
import 'package:banquete_do_monarca/pages/Home/home_page.dart';
import 'package:flutter/material.dart';

class BebidasPage extends StatelessWidget {
  const BebidasPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraint) {
          var largura = constraint.maxWidth;
          var comprimento = constraint.maxHeight;
          return Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  "assets/images/background-madeira.png",
                ),
                fit: BoxFit.fill,
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      width: 142,
                      height: 490,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 50, 91, 124),
                      ),
                      //Destaques
                      child: Column(
                        children: [
                          Flexible(
                            flex: 0,
                            child: Container(
                              width: largura,
                              height: 100,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: new AssetImage(
                                      "assets/images/destaques.png"),
                                ),
                              ),
                              child: InkWell(
                                onTap: () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (context) => HomePage()));
                                },
                              ),
                            ),
                          ),
                          Flexible(
                            flex: 0,
                            child: Container(
                              width: largura,
                              height: 100,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: new AssetImage(
                                      "assets/images/cardapio.png"),
                                ),
                              ),
                              child: InkWell(
                                onTap: () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (context) => CardapioPage()));
                                },
                              ),
                            ),
                          ),
                          Flexible(
                            flex: 0,
                            child: Container(
                              width: largura,
                              height: 100,
                              decoration: BoxDecoration(
                                color: AppColors.secondary,
                                image: DecorationImage(
                                  image: new AssetImage(
                                      "assets/images/bebidas.png"),
                                ),
                              ),
                              child: InkWell(
                                onTap: () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (context) => BebidasPage()));
                                },
                              ),
                            ),
                          ),
                          Flexible(
                            flex: 0,
                            child: Container(
                              width: largura,
                              height: 100,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: new AssetImage(
                                      "assets/images/mercado.png"),
                                ),
                              ),
                              child: InkWell(
                                onTap: () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (context) => MercadoPage()));
                                },
                              ),
                            ),
                          ),
                          GestureDetector(
                            child: Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: Container(
                                width: largura,
                                height: 50,
                                child: Text(
                                  "Sobre",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 30,
                                      fontFamily: 'awesomeLathusca'),
                                ),
                              ),
                            ),
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => StoryPage()));
                            },
                          ),
                        ],
                      ),
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
