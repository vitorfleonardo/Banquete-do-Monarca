import 'package:banquete_do_monarca/pages/Login/login_page.dart';
import 'package:banquete_do_monarca/pages/Pagamento/pagamento_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../core/app_colors.dart';
import '../repository/cart_model.dart';

var pontosRecebidos = 0;

class Carrinho extends StatelessWidget {
  const Carrinho({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<CartModel>(
      builder: (context, value, child) {
        return SizedBox(
          width: MediaQuery.of(context).size.width * 0.5,
          height: MediaQuery.of(context).size.height,
          child: Drawer(
            child: Column(
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.5,
                  height: MediaQuery.of(context).size.height * 0.14,
                  child: DrawerHeader(
                    decoration: const BoxDecoration(
                      color: AppColors.secondary,
                    ),
                    child: Center(
                      child: FittedBox(
                        fit: BoxFit.fitWidth,
                        child: Text(
                          "Meus Pedidos",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: MediaQuery.of(context).size.height * 0.07,
                            fontFamily: 'awesomeLathusca',
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),

                //Listar produtos no carrinho
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.6,
                  width: double.infinity,
                  child: Column(
                    children: [
                      Expanded(
                        child: ListView.builder(
                          itemCount: value.cartItems.length,
                          itemBuilder: (context, index) {
                            //mostrar pedidos do carrinho

                            return SingleChildScrollView(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  height:
                                      MediaQuery.of(context).size.height * 0.15,
                                  width:
                                      MediaQuery.of(context).size.width * 0.48,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage(
                                            value.cartItems[index][1]),
                                        fit: BoxFit.cover),
                                  ),
                                  child: Container(
                                    margin: EdgeInsets.only(
                                      right: MediaQuery.of(context).size.width *
                                          0.44,
                                    ),
                                    child: IconButton(
                                      icon: Icon(Icons.clear,
                                          size: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.02,
                                          color: Colors.grey),
                                      onPressed: () => Provider.of<CartModel>(
                                              context,
                                              listen: false)
                                          .removeItemFromCart(index),
                                    ),
                                  ),
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                //Preço e finalizar compra
                Container(
                  height: MediaQuery.of(context).size.height * 0.001,
                  width: double.infinity,
                  decoration: const BoxDecoration(color: Colors.black),
                ),
                Row(
                  children: [
                    Column(
                      children: [
                        Container(
                          margin: EdgeInsets.only(
                            top: MediaQuery.of(context).size.height * 0.015,
                          ),
                          child: Text(
                            'Valor Total',
                            style: TextStyle(
                              fontWeight: FontWeight.w900,
                              fontSize:
                                  MediaQuery.of(context).size.height * 0.03,
                              color: const Color.fromARGB(160, 22, 22, 22),
                            ),
                            maxLines: 1,
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(
                            top: MediaQuery.of(context).size.height * 0.01,
                            left: MediaQuery.of(context).size.height * 0.05,
                          ),
                          child: Text(
                            'R\$${value.calculateTotal()}',
                            style: TextStyle(
                              fontWeight: FontWeight.w900,
                              fontSize:
                                  MediaQuery.of(context).size.height * 0.07,
                            ),
                            maxLines: 1,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          margin: EdgeInsets.only(
                            top: MediaQuery.of(context).size.height * 0.01,
                            left: MediaQuery.of(context).size.width * 0.08,
                          ),
                          width: MediaQuery.of(context).size.width * 0.16,
                          height: MediaQuery.of(context).size.height * 0.1,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              foregroundColor: Colors.white,
                              backgroundColor:
                                  const Color.fromARGB(255, 28, 129, 31),
                              shape: const StadiumBorder(),
                            ),
                            onPressed: () {
                              pontosRecebidos =
                                  int.parse(value.calculatePoints()) * -1;
                              if (pontosRecebidos > pontos) {
                                showDialog(
                                  context: context,
                                  builder: (context) {
                                    return const AlertDialog(
                                      content: Text(
                                          'Você não pode trocar seus pontos por esse brinde'),
                                    );
                                  },
                                );
                              } else {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) =>
                                        const PagamentoPage()));
                              }
                            },
                            child: FittedBox(
                              child: Text('Fazer Pedido',
                                  maxLines: 1,
                                  style: TextStyle(
                                    fontSize:
                                        MediaQuery.of(context).size.height *
                                            0.07,
                                  )),
                            ),
                          ),
                        ),
                        //********************************** */
                        Container(
                          margin: EdgeInsets.only(
                            left: MediaQuery.of(context).size.width * 0.08,
                          ),
                          child: RichText(
                            text: TextSpan(
                              text: 'Receba ',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: MediaQuery.of(context).size.height *
                                      0.022,
                                  fontWeight: FontWeight.w900),
                              children: <TextSpan>[
                                TextSpan(
                                  text: '${value.calculatePoints()}pts ',
                                  style: TextStyle(
                                    color: Colors.red,
                                    fontSize:
                                        MediaQuery.of(context).size.height *
                                            0.022,
                                    fontWeight: FontWeight.w900,
                                  ),
                                ),
                                TextSpan(
                                    text: 'na Compra',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize:
                                            MediaQuery.of(context).size.height *
                                                0.022,
                                        fontWeight: FontWeight.w900)),
                              ],
                            ),
                            maxLines: 1,
                          ),
                        ),
                      ],
                    ),
                  ],
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
