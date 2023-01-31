import 'package:flutter/material.dart';
import 'package:banquete_do_monarca/core/app_lists.dart';

import '../core/app_colors.dart';

class Carrinho extends StatelessWidget {
  const Carrinho({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    late String pedido;
    pedido = "";
    if (osgard == 1) {
      pedido = "assets/imagens_carrinho/osgard.png";
    }
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.5,
      child: Drawer(
        child: Column(
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.5,
              height: MediaQuery.of(context).size.height * 0.14,
              child: const DrawerHeader(
                decoration: BoxDecoration(
                  color: AppColors.secondary,
                ),
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
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(
                        left: MediaQuery.of(context).size.width * 0.01),
                    child: const FittedBox(
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
                        left: MediaQuery.of(context).size.width * 0.26),
                    child: const FittedBox(
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
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: MediaQuery.of(context).size.height * 0.15,
                width: MediaQuery.of(context).size.width * 0.48,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(pedido), fit: BoxFit.cover),
                ),
                child: Center(
                  child: Container(
                    margin: EdgeInsets.only(
                      right: MediaQuery.of(context).size.width * 0.44,
                    ),
                    height: MediaQuery.of(context).size.height * 0.09,
                    width: MediaQuery.of(context).size.width * 0.059,
                    child: const Icon(
                      Icons.delete,
                      color: Colors.grey,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
