import 'package:flutter/material.dart';

import 'Login.dart';

class RecPwd extends StatefulWidget {
  const RecPwd({Key? key}) : super(key: key);

  @override
  State<RecPwd> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<RecPwd> {
  TextEditingController emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.grey,
      child: Padding(
          padding: const EdgeInsets.all(10),
          child: ListView(
            shrinkWrap: true,
            children: <Widget>[
              Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.fromLTRB(25, 200, 25, 10),
                  child: const Center(
                    child: Text(
                      'Iremos enviar um link para a efetuação da troca de senha no seu email! Insira-o aqui!',
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w300,
                          fontSize: 30),
                    ),
                  )),
              Container(
                padding: const EdgeInsets.fromLTRB(10, 30, 10, 10),
                child: TextField(
                  controller: emailController,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'E-mail',
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                SizedBox(
                  height: 60,
                  child: ElevatedButton.icon(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blueGrey,
                    ),
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const Login()));
                    },
                    icon: const Icon(Icons.send),
                    label: const Text(
                      "Enviar",
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                )
              ]),
            ],
          )),
    );
  }
}
