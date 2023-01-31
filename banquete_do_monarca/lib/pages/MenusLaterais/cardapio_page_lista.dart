import 'package:banquete_do_monarca/repository/produtos.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class CardapioPageLista extends StatelessWidget {
  final List<Product> comidas;
  const CardapioPageLista({
    super.key,
    required this.comidas,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: comidas
              .map((comidas) => Container(
                    margin: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height * 0.125,
                      left: MediaQuery.of(context).size.height * 0.400,
                    ),
                    width: MediaQuery.of(context).size.width * 0.75,
                    height: MediaQuery.of(context).size.height * 0.50,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                          comidas.imgCardapio,
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
