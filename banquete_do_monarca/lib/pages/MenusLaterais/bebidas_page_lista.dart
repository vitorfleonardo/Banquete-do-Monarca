import 'package:banquete_do_monarca/repository/produtos.dart';
import 'package:flutter/cupertino.dart';

class BebidasPageLista extends StatelessWidget {
  final List<Product> bebidas;
  const BebidasPageLista({
    super.key,
    required this.bebidas,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: bebidas
              .map((bebidas) => Container(
                    margin: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height * 0.125,
                      left: MediaQuery.of(context).size.height * 0.400,
                    ),
                    width: MediaQuery.of(context).size.width * 0.75,
                    height: MediaQuery.of(context).size.height * 0.50,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                          bebidas.imgBebidas,
                        ),
                        fit: BoxFit.fill,
                      ),
                    ),
                    child: Row(
                      children: [
                        GestureDetector(
                          child: Container(
                            margin: EdgeInsets.only(
                              top: MediaQuery.of(context).size.height * 0.27,
                              left: MediaQuery.of(context).size.width * 0.52,
                            ),
                            width: MediaQuery.of(context).size.width * 0.2,
                            height: MediaQuery.of(context).size.height * 0.2,
                            child: Image.asset(
                              "assets/imagens_cardapio/Botao_Adicionar.png",
                              fit: BoxFit.contain,
                            ),
                          ),
                          onTap: () {},
                        ),
                      ],
                    ),
                  ))
              .toList()),
    );
  }
}
