import 'package:flutter/material.dart';

import '../../components/components.dart';

class MercadoPage extends StatefulWidget {
  const MercadoPage({Key? key}) : super(key: key);

  @override
  State<MercadoPage> createState() => _MercadoPageState();
}

class _MercadoPageState extends State<MercadoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraint) {
          return Stack(children: <Widget>[
            Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    "assets/images/background-madeira.png",
                  ),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Column(mainAxisAlignment: MainAxisAlignment.start, children: [
              Container(
                  margin: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.11,
                    left: MediaQuery.of(context).size.width * 0.100,
                  ),
                  width: MediaQuery.of(context).size.width * 0.95,
                  height: MediaQuery.of(context).size.height * 0.89,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                    image: AssetImage("assets/imagens_mercado/background.png"),
                    fit: BoxFit.fill,
                  )),
                  child: Row(children: [
                    GestureDetector(
                      child: Container(
                        margin: EdgeInsets.only(
                          top: MediaQuery.of(context).size.height * 0.27,
                          left: MediaQuery.of(context).size.width * 0.52,
                        ),
                        width: MediaQuery.of(context).size.width * 0.2,
                        height: MediaQuery.of(context).size.height * 0.2,
                        child: Image.asset(
                          "assets/imagens_mercado/balao-fala.png",
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ]))
            ]),
            Column(
              children: [
                Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [MenuLateral()])
              ],
            )
          ]);
        },
      ),
    );
  }
}
