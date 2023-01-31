import 'package:brasil_fields/brasil_fields.dart';
import 'package:banquete_do_monarca/pages/Storytelling/story_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';

class LoginPage extends StatelessWidget {
  LoginPage({Key? key}) : super(key: key);
  final TextEditingController _cpf = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraint) {
          return Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  "assets/images/background_CPF.png",
                ),
                fit: BoxFit.cover,
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(
                              "assets/images/fundo_digitar1.png",
                            ),
                            fit: BoxFit.cover,
                          ),
                        ),
                        padding: const EdgeInsets.all(40),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                const Text(
                                  "Digite seu CPF.",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 40,
                                      fontFamily: 'awesomeLathusca'),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 10),
                                  child: SizedBox(
                                    width: 300,
                                    child: TextFormField(
                                        controller: _cpf,
                                        decoration: const InputDecoration(
                                          labelText: 'CPF',
                                          labelStyle: TextStyle(
                                            color: Color.fromARGB(
                                                255, 243, 243, 243),
                                          ),
                                          enabledBorder: UnderlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Color.fromARGB(
                                                      255, 163, 120, 0))),
                                        ),
                                        inputFormatters: [
                                          FilteringTextInputFormatter
                                              .digitsOnly,
                                          CpfInputFormatter()
                                        ],
                                        style: const TextStyle(
                                            color: Color.fromARGB(
                                                255, 255, 255, 255)),
                                        keyboardType: TextInputType.number,
                                        validator: (value) {
                                          if (value == null &&
                                              GetUtils.isCpf(value!)) {
                                            return 'CPF inválido';
                                          }
                                          return null;
                                        }),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 40),
                                  child: ElevatedButton(
                                    // ignore: sort_child_properties_last
                                    child: const Text('COMECAR',
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontFamily: 'awesomeLathusca')),
                                    style: ElevatedButton.styleFrom(
                                      foregroundColor: const Color.fromARGB(
                                          255, 255, 255, 255),
                                      backgroundColor: const Color.fromARGB(
                                          255, 107, 93, 67),
                                      shape: const BeveledRectangleBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(5))),
                                    ),
                                    onPressed: () async {
                                      String cpf = _cpf.text;
                                      var collection = FirebaseFirestore
                                          .instance
                                          .collection('cliente');
                                      var result = await collection.get();
                                      //collection.snapshots().listen((c) {
                                      // result=c;
                                      // if((cpf)==(c.docs[1]['cpf'])){
                                      //   print(c.docs[0]['cpf']);
                                      // }
                                      //});
                                      for (var doc in result.docs) {
                                        if ((cpf) == (doc['cpf'])) {
                                          print('bom');
                                        }
                                      }

                                      if (GetUtils.isCpf(cpf)) {
                                        FirebaseFirestore.instance
                                            .collection("cliente")
                                            .doc()
                                            .set({'cpf': (cpf)});
                                        Navigator.of(context).push(
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    const StoryPage()));
                                      } else {
                                        // ignore: use_build_context_synchronously
                                        showDialog<String>(
                                          context: context,
                                          builder: (BuildContext context) =>
                                              AlertDialog(
                                            title:
                                                const Text('Ocorreu um erro!'),
                                            content: const Text(
                                                'Seu CPF é inválido tente novamente!'),
                                            actions: <Widget>[
                                              TextButton(
                                                onPressed: () => Navigator.pop(
                                                    context, 'OK'),
                                                child: const Text('OK'),
                                              ),
                                            ],
                                          ),
                                        );
                                      }
                                    },
                                  ),
                                ),
                              ],
                            )
                          ],
                        )),
                    Image.asset(
                      "assets/images/logo1.png",
                      width: MediaQuery.of(context).size.width * 0.15,
                      height: MediaQuery.of(context).size.height * 0.15,
                    ),
                  ],
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}


// TextEditingController _passwordController = TextEditingController();
// if(condition)
// {
//  //success call
// }
// else
// {
// setState((){
//   _passwordController.text="Password Does not match
//  });
// }