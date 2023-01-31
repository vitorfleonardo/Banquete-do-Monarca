import 'package:banquete_do_monarca/repository/produtos.dart';
import 'package:flutter/material.dart';

class HomePageLista extends StatelessWidget {
  final List<Product> produtos;
  final List<Product> produtosSelecionados;
  final Function(Product) onProdutoSelecionado;
  const HomePageLista({
    super.key,
    required this.produtos,
    required this.produtosSelecionados,
    required this.onProdutoSelecionado,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: produtos
          .map(
            (produto) => GestureDetector(
                child: Container(
                    margin: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height * 0.667,
                      left: MediaQuery.of(context).size.width * 0.02,
                    ),
                    width: MediaQuery.of(context).size.width * 0.14,
                    height: MediaQuery.of(context).size.height * 0.22,
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(
                              width: 4,
                              color: produtosSelecionados.contains(produto)
                                  ? Colors.red
                                  : Colors.transparent)),
                      child: Image.asset(
                        produto.imgHome,
                        fit: BoxFit.fill,
                      ),
                    )),
                onTap: () => onProdutoSelecionado(produto)),
          )
          .toList(),
    );
  }
}
