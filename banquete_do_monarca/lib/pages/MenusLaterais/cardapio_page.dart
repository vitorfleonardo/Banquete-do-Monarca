import 'package:banquete_do_monarca/data/dummy_data.dart';
import 'package:banquete_do_monarca/pages/MenusLaterais/cardapio_page_lista.dart';
import 'package:banquete_do_monarca/repository/produtos.dart';
import 'package:flutter/material.dart';
import '../../components/components.dart';

class CardapioPage extends StatefulWidget {
  const CardapioPage({Key? key}) : super(key: key);

  @override
  State<CardapioPage> createState() => _CardapioPageState();
}

class _CardapioPageState extends State<CardapioPage> {
  List<Product> comidas =
      dummyProducts.where((comida) => comida.imgCardapio.isNotEmpty).toList();
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
              CardapioPageLista(comidas: comidas),
              Column(
                children: [
                  Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [MenuLateral()])
                ],
              ),
            ],
          );
        },
      ),
    );
  }
}
