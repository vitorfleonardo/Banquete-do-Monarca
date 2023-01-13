import 'package:banquete_do_monarca/pages/MenusLaterais/home_page.dart';
import 'package:banquete_do_monarca/pages/MenusLaterais/bebidas_page.dart';
import 'package:banquete_do_monarca/pages/MenusLaterais/cardapio_page.dart';
import 'package:banquete_do_monarca/pages/MenusLaterais/mercado_page.dart';
import 'package:banquete_do_monarca/pages/Storytelling/story_page.dart';
import 'package:carousel_slider/carousel_slider.dart';
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
    );
  }
}

class barraDestaques extends StatelessWidget {
  const barraDestaques({
    Key? key,
    required this.imageSliders,
  }) : super(key: key);

  final List<Widget> imageSliders;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin:
          EdgeInsets.only(bottom: MediaQuery.of(context).size.height * 0.245),
      height: MediaQuery.of(context).size.height * 0.55,
      width: MediaQuery.of(context).size.width * 0.869,
      child: CarouselSlider(
        options: CarouselOptions(
          aspectRatio: 1.0,
          enlargeCenterPage: true,
          enlargeStrategy: CenterPageEnlargeStrategy.height,
          autoPlay: true,
        ),
        items: imageSliders,
      ),
    );
  }
}

GestureDetector botaoAdicionar(BuildContext context) {
  return GestureDetector(
    child: Container(
      margin: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.91),
      width: MediaQuery.of(context).size.width * 0.15,
      height: MediaQuery.of(context).size.height * 0.9,
      decoration: const BoxDecoration(
        color: Color.fromARGB(255, 255, 0, 0),
      ),
      child: const FittedBox(
        child: Text(
          "Adicionar",
          textAlign: TextAlign.center,
          style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontFamily: 'awesomeLathusca'),
          maxLines: 1,
        ),
      ),
    ),
  );
}

class Carrinho extends StatelessWidget {
  const Carrinho({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.5,
      child: Drawer(
        child: Column(
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.5,
              height: MediaQuery.of(context).size.height * 0.14,
              child: const DrawerHeader(
                child: Center(
                  child: FittedBox(
                    fit: BoxFit.fitWidth,
                    child: Text(
                      "Meu Carrinho",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 40,
                        fontFamily: 'awesomeLathusca',
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                decoration: BoxDecoration(
                  color: AppColors.secondary,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(
                        left: MediaQuery.of(context).size.width * 0.01),
                    child: FittedBox(
                      fit: BoxFit.fitWidth,
                      child: Text(
                        "Item",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(
                        left: MediaQuery.of(context).size.width * 0.2),
                    child: FittedBox(
                      fit: BoxFit.fitWidth,
                      child: Text(
                        "Qtde",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
