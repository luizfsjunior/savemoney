import 'package:flutter/material.dart';
import 'package:flutter_startup/login.dart';
import 'package:flutter_startup/services/flutter_fire_auth.dart';

class Sign extends StatefulWidget {
  const Sign({Key? key}) : super(key: key);

  @override
  State<Sign> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<Sign> {
  TextEditingController emailController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController password2Controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    void _submit() async {
      final name = nameController.text;
      print(name);
      final email = emailController.text;
      print(email);
      final password = passwordController.text;
      print(password);

      final user =
          await FlutterFireAuth(context).createUserWithEmailAndPassword(
        name,
        email,
        password,
      );
    }

    return Material(
      color: Colors.grey,
      child: Padding(
          padding: const EdgeInsets.all(10),
          child: ListView(
            shrinkWrap: true,
            children: <Widget>[
              Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.fromLTRB(25, 140, 25, 10),
                  child: const Center(
                    child: Text(
                      'Insira suas informações para realizar o cadastro!',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w300,
                          fontSize: 30),
                    ),
                  )),
              Container(
                padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                child: TextField(
                  controller: emailController,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'E-mail',
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                child: TextField(
                  obscureText: false,
                  controller: nameController,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Usuário',
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.fromLTRB(10, 20, 10, 0),
                child: TextField(
                  obscureText: true,
                  controller: passwordController,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Senha',
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.fromLTRB(10, 20, 10, 0),
                child: TextField(
                  obscureText: true,
                  controller: password2Controller,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Repita sua senha',
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 60,
                    child: ElevatedButton.icon(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.blueGrey,
                      ),
                      onPressed: () {
                        _submit();
                      },
                      icon: const Icon(Icons.login),
                      label: const Text(
                        "Cadastrar-se",
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                  ),
                  const Padding(padding: EdgeInsets.symmetric(horizontal: 15)),
                  SizedBox(
                    height: 60,
                    child: ElevatedButton.icon(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.blueGrey,
                      ),
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const Login()));
                      },
                      icon: const Icon(Icons.arrow_back),
                      label: const Text(
                        "Voltar",
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          )),
    );
  }
}
