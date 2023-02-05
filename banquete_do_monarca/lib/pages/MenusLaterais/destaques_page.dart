//import 'dart:html';

import 'package:flutter/material.dart';

import '../../components/background_geral.dart';
import '../../components/barra_de_destaques.dart';

import '../../components/carrinho_view.dart';
import 'package:banquete_do_monarca/core/app_lists.dart';

import '../../components/menu_lateral.dart';
import '../../core/app_colors.dart';

class HomePage extends StatefulWidget {
  final Object? users;
  const HomePage({this.users, Key? key}) : super(key: key);
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> produtosSelecionados = [];
  void onProdutoSelecionado(String produto) {
    setState(() {
      if (produtosSelecionados.contains(produto)) {
        produtosSelecionados.remove(produto);
      } else {
        produtosSelecionados.add(produto);
      }
    });
  }

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  void _openEndDrawer() {
    _scaffoldKey.currentState!.openEndDrawer();
  }

  @override
  Widget build(BuildContext context) {
    final List<Widget> imageSliders = imgList
        .map(
          (item) => Container(
            margin: const EdgeInsets.all(5.0),
            child: ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(5.0)),
                child: Stack(
                  children: <Widget>[
                    Image.asset(item, fit: BoxFit.fill),
                  ],
                )),
          ),
        )
        .toList();
    return Scaffold(
      key: _scaffoldKey,
      endDrawer: const Carrinho(),
      body: LayoutBuilder(
        builder: (context, constraint) {
          return Stack(
            children: <Widget>[
              const BackgroundGeneral(),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      MenuLateral(),
                      Column(
                        children: [
                          BarraDestaques(imageSliders: imageSliders),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.13,
                    height: MediaQuery.of(context).size.height * 0.11,
                    decoration: const BoxDecoration(
                      color: Colors.grey,
                    ),
                    child: const Center(
                      child: Text('Pontos:'),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: GestureDetector(
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
