import 'package:flutter/cupertino.dart';

// ignore: must_be_immutable
class BebidasPageLista extends StatelessWidget {
  final String bebidas;
  void Function()? onPressed;
  BebidasPageLista({
    super.key,
    required this.bebidas,
    required this.onPressed,
  });
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.only(
            top: MediaQuery.of(context).size.height * 0.125,
            left: MediaQuery.of(context).size.height * 0.400,
          ),
          width: MediaQuery.of(context).size.width * 0.75,
          height: MediaQuery.of(context).size.height * 0.50,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(bebidas),
              fit: BoxFit.fill,
            ),
          ),
          child: Row(
            children: [
              GestureDetector(
                onTap: onPressed,
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
              ),
            ],
          ),
        ),
      ],
    );
  }
}
