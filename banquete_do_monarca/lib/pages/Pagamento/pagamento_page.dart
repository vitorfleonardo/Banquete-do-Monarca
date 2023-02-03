//import 'dart:html';
import 'package:banquete_do_monarca/pages/MenusLaterais/destaques_page_lista.dart';
import 'package:banquete_do_monarca/repository/cart_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
import '../../components/background_geral.dart';
import '../../components/barra_de_destaques.dart';
import '../../components/botao_adc_destaques.dart';
import '../../components/carrinho_view.dart';
import 'package:banquete_do_monarca/core/app_lists.dart';

import '../../components/menu_lateral.dart';
import '../../core/app_colors.dart';

class PagamentoPage extends StatefulWidget {
  const PagamentoPage({Key? key}) : super(key: key);

  @override
  State<PagamentoPage> createState() => _PagamentoPageState();
}

class _PagamentoPageState extends State<PagamentoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraint) {
          return Stack(
            children: <Widget>[
              const BackgroundGeneral(), 
              SizedBox(
                width: MediaQuery.of(context).size.width * 1.0,
                height: MediaQuery.of(context).size.height * 0.14,
                  child: const DrawerHeader(
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 247, 247, 247),
                    ),
                    child: Center(
                      child: FittedBox(
                        fit: BoxFit.fitWidth,
                        child: Text(
                          "Pagamento",
                          style: TextStyle(
                            color: Color.fromARGB(255, 36, 35, 35),
                            fontSize: 40,
                            fontFamily: 'awesomeLathusca',
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.66,
                  width: double.infinity,
                  child: Column(
                    
              )   
            ],
          );
        },
      ),
    );
  }
}
