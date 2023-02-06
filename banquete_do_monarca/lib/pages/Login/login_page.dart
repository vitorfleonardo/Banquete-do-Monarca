import 'package:brasil_fields/brasil_fields.dart';
import '../../repository/consumer_model.dart';
import 'package:banquete_do_monarca/pages/Storytelling/story_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

String cpfGeral = "";
// ignore: prefer_typing_uninitialized_variables
var pontos;

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
                                        if (GetUtils.isCpf(_cpf.text)) {
                                          var teste = await getUser(_cpf.text);
                                          createUser(_cpf.text, teste);
                                          cpfGeral = _cpf.text;
                                          pontos = await pontuacao();
                                          // ignore: use_build_context_synchronously
                                          Navigator.of(context).push(
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      const StoryPage()));
                                        } else {
                                          showDialog<String>(
                                            context: context,
                                            builder: (BuildContext context) =>
                                                AlertDialog(
                                              title: const Text(
                                                  'Ocorreu um erro!'),
                                              content: const Text(
                                                  'Seu CPF é inválido tente novamente!'),
                                              actions: <Widget>[
                                                TextButton(
                                                  onPressed: () =>
                                                      Navigator.pop(
                                                          context, 'OK'),
                                                  child: const Text('OK'),
                                                ),
                                              ],
                                            ),
                                          );
                                        }
                                      }),
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

Future<bool> getUser(String cpf) async {
  final db = FirebaseFirestore.instance;
  try {
    var colecao = db.collection('usuarios');
    var getcpf = await colecao.doc(cpf).get();

    return getcpf.exists;
  } catch (e) {
    return false;
  }
}

Future<Object> getUsuario(String cpf) async {
  final db = FirebaseFirestore.instance;
  try {
    var colecao = db.collection('usuarios');
    var getcpf = await colecao.doc(cpf).get();

    var jsonUser = {"pontos": getcpf['pontos'], "cpf": getcpf['cpf']};

    return jsonUser;
  } catch (e) {
    return false;
  }
}

Future createUser(String cpf, bool userExists) async {
  final db = FirebaseFirestore.instance;

  if (userExists == false) {
    final user = User(points: 0, cpf: cpf);
    final docUser = db.collection('usuarios').doc(user.cpf);
    final json = user.toJson();
    await docUser.set(json);
  }
}

Future<int> pontuacao() async {
  pontos = await getPoints(cpfGeral);
  return pontos;
}

Future getPoints(String cpf) async {
  final db = FirebaseFirestore.instance;
  try {
    var colecao = db.collection('usuarios');
    var getcpf = await colecao.doc(cpf).get();

    var pontos = getcpf['pontos'];
    return pontos;
  } catch (e) {
    return false;
  }
}
