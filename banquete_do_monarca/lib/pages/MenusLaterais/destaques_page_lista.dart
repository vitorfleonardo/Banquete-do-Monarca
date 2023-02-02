import 'package:flutter/material.dart';

class HomePageLista extends StatelessWidget {
  late String produtos;
  final List<String> produtosSelecionados;
  final Function(String) onProdutoSelecionado;
  HomePageLista({
    super.key,
    required this.produtos,
    required this.produtosSelecionados,
    required this.onProdutoSelecionado,
  });

  @override
  Widget build(BuildContext context) {
    if (produtos != "") {
      produtos = produtos;
    }
    return Stack(
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            GestureDetector(
              child: SizedBox(
                  width: MediaQuery.of(context).size.width * 0.14,
                  height: MediaQuery.of(context).size.height * 0.22,
                  child: Container(
                    decoration: BoxDecoration(
                        border: Border.all(
                            width: 4,
                            color: produtosSelecionados.contains(produtos)
                                ? Colors.red
                                : Colors.blueGrey)),
                    child: Image.asset(
                      produtos,
                      fit: BoxFit.fill,
                    ),
                  )),
              onTap: () => onProdutoSelecionado(produtos),
            ),
          ],
        ),
      ],
    );
  }
}
