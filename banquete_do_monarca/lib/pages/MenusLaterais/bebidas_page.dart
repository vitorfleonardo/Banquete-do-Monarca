import 'package:banquete_do_monarca/data/dummy_data.dart';
import 'package:banquete_do_monarca/pages/MenusLaterais/bebidas_page_lista.dart';
import 'package:banquete_do_monarca/repository/produtos.dart';
import 'package:flutter/material.dart';

import '../../components/background_geral.dart';
import '../../components/menu_lateral.dart';

class BebidasPage extends StatefulWidget {
  const BebidasPage({Key? key}) : super(key: key);

  @override
  State<BebidasPage> createState() => _BebidasPageState();
}

class _BebidasPageState extends State<BebidasPage> {
  List<Product> bebidas =
      dummyProducts.where((bebidas) => bebidas.imgBebidas.isNotEmpty).toList();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraint) {
          return Stack(
            children: <Widget>[
              const BackgroundGeneral(),
              BebidasPageLista(bebidas: bebidas),
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
