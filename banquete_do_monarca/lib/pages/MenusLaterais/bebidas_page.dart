import 'package:banquete_do_monarca/pages/MenusLaterais/bebidas_page_lista.dart';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../components/background_geral.dart';
import '../../components/carrinho_view.dart';
import '../../components/menu_lateral.dart';
import '../../core/app_colors.dart';
import '../../repository/cart_model.dart';

class BebidasPage extends StatefulWidget {
  const BebidasPage({
    Key? key,
  }) : super(key: key);

  @override
  State<BebidasPage> createState() => _BebidasPageState();
}

final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
void _openEndDrawer() {
  _scaffoldKey.currentState!.openEndDrawer();
}

class _BebidasPageState extends State<BebidasPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      endDrawer: const Carrinho(),
      body: LayoutBuilder(
        builder: (context, constraint) {
          return Stack(
            children: <Widget>[
              const BackgroundGeneral(),
              Consumer<CartModel>(
                builder: (context, value, child) {
                  return ListView.builder(
                    itemCount: 9,
                    scrollDirection: Axis.vertical,
                    itemBuilder: (context, index) {
                      return value.shopItems[index][6].isEmpty
                          ? const SizedBox(
                              width: 0,
                              height: 0,
                            )
                          : BebidasPageLista(
                              bebidas: value.shopItems[index][6],
                              onPressed: () =>
                                  Provider.of<CartModel>(context, listen: false)
                                      .addItemToCart(index),
                            );
                    },
                  );
                },
              ),
              Column(
                children: [
                  Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [MenuLateral()])
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  GestureDetector(
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.13,
                      height: MediaQuery.of(context).size.height * 0.11,
                      decoration: const BoxDecoration(
                        color: AppColors.secondary,
                      ),
                      child: const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: FittedBox(
                          child: Text(
                            "Meus Pedidos",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'awesomeLathusca'),
                            maxLines: 1,
                          ),
                        ),
                      ),
                    ),
                    onTap: () => _openEndDrawer(),
                  ),
                ],
              ),
            ],
          );
        },
      ),
    );
  }
}
