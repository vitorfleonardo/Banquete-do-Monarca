import 'package:banquete_do_monarca/pages/MenusLaterais/home_page.dart';
import 'package:banquete_do_monarca/pages/MenusLaterais/bebidas_page.dart';
import 'package:banquete_do_monarca/pages/MenusLaterais/cardapio_page.dart';
import 'package:banquete_do_monarca/pages/MenusLaterais/mercado_page.dart';
import 'package:banquete_do_monarca/pages/Storytelling/story_page.dart';
import 'package:flutter/material.dart';

import 'core/app_colors.dart';

class OpcoesMenu extends StatelessWidget {
  final BuildContext context;
  final String image;
  final Color color;
  final Widget navigator;
  const OpcoesMenu(
      {Key? key,
      required this.context,
      required this.image,
      required this.color,
      required this.navigator})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.15,
      // ignore: prefer_const_constructors
      decoration: BoxDecoration(
          color: color,
          image: DecorationImage(
              image: AssetImage(
            image,
          ))),
      child: InkWell(
        onTap: () {
          Navigator.of(context).pushReplacement(
            MaterialPageRoute(
              builder: (context) => navigator,
            ),
          );
        },
      ),
    );
  }
}

class MenuLateral extends StatelessWidget {
  final isSelected = ValueNotifier<bool>(false);
  MenuLateral({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.11),
              width: MediaQuery.of(context).size.width * 0.13,
              height: MediaQuery.of(context).size.height * 0.89,
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 50, 91, 124),
              ),
              child: Column(
                children: [
                  OpcoesMenu(
                    navigator: const HomePage(),
                    context: context,
                    image: "assets/images/destaques.png",
                    color: isSelected.value
                        ? AppColors.secondary
                        : const Color.fromARGB(255, 50, 91, 124),
                  ),
                  OpcoesMenu(
                    navigator: const CardapioPage(),
                    context: context,
                    image: "assets/images/cardapio.png",
                    color: isSelected.value
                        ? AppColors.secondary
                        : const Color.fromARGB(255, 50, 91, 124),
                  ),
                  OpcoesMenu(
                    navigator: const BebidasPage(),
                    context: context,
                    image: "assets/images/bebidas.png",
                    color: isSelected.value
                        ? AppColors.secondary
                        : const Color.fromARGB(255, 50, 91, 124),
                  ),
                  OpcoesMenu(
                    navigator: const MercadoPage(),
                    context: context,
                    image: "assets/images/mercado.png",
                    color: isSelected.value
                        ? AppColors.secondary
                        : const Color.fromARGB(255, 50, 91, 124),
                  ),
                  GestureDetector(
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        height: 50,
                        child: const FittedBox(
                          child: Text(
                            "Sobre",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 30,
                                fontFamily: 'awesomeLathusca'),
                            maxLines: 1,
                          ),
                        ),
                      ),
                    ),
                    onTap: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => StoryPage()));
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
