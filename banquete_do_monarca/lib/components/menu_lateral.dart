import 'package:flutter/material.dart';

import '../core/app_colors.dart';
import '../pages/Login/login_page.dart';
import '../pages/MenusLaterais/bebidas_page.dart';
import '../pages/MenusLaterais/cardapio_page.dart';
import '../pages/MenusLaterais/destaques_page.dart';
import '../pages/MenusLaterais/mercado_page.dart';
import '../pages/Storytelling/story_page.dart';

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
    // ignore: prefer_typing_uninitialized_variables
    var appColors;
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          margin:
              EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.11),
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
                    ? appColors.secondary
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
                  padding: const EdgeInsets.only(top: 5.0),
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width,
                    height: 50,
                    child: Text(
                      "Sobre",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: MediaQuery.of(context).size.width * 0.03,
                          fontFamily: 'awesomeLathusca'),
                      maxLines: 1,
                    ),
                  ),
                ),
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const StoryPage()));
                },
              ),
              GestureDetector(
                child: Padding(
                  padding: const EdgeInsets.only(top: 3.0),
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width,
                    height: 35,
                    child: Text(
                      "Sair",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: MediaQuery.of(context).size.width * 0.02,
                          fontFamily: 'awesomeLathusca'),
                      maxLines: 1,
                    ),
                  ),
                ),
                onTap: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => LoginPage()));
                  cpfGeral = "";
                },
              ),
            ],
          ),
        ),
      ],
    );
  }
}
