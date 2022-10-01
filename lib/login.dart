import 'package:flutter/material.dart';
import 'package:flutter_startup/home.dart';
import 'package:flutter_startup/rec_pwd.dart';
import 'package:flutter_startup/services/flutter_fire_auth.dart';
import 'package:flutter_startup/sign.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<Login> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    void _resetForm() async {
      emailController.clear();
      passwordController.clear();
    }

    void _singInEmailAndPssword() async {
      final email = emailController.text;
      final password = passwordController.text;

      final user = await FlutterFireAuth(context)
          .signInWithEmailAndPassword(email, password);

      if (user != null) {
        _resetForm();
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => const Home()));
      }
    }

    return Material(
      color: Colors.grey,
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: ListView(
          shrinkWrap: true,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 220, 0, 0),
              child: Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.all(10),
                child: const Text(
                  'BEM VINDO',
                  style: TextStyle(fontSize: 30, color: Colors.white),
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(10, 20, 10, 10),
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
                obscureText: true,
                controller: passwordController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Senha',
                ),
              ),
            ),
            const SizedBox(height: 10),
            TextButton(
              style: TextButton.styleFrom(foregroundColor: Colors.white),
              onPressed: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => const RecPwd()));
              },
              child: const Text(
                'Esqueci minha senha',
                style: TextStyle(fontSize: 17),
              ),
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 60,
                  child: ElevatedButton.icon(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blueGrey,
                    ),
                    onPressed: () {
                      _singInEmailAndPssword();
                    },
                    icon: const Icon(Icons.login),
                    label: const Text(
                      "Entrar",
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ),
                const Padding(padding: EdgeInsets.symmetric(horizontal: 15)),
                SizedBox(
                  height: 60,
                  child: ElevatedButton.icon(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blueGrey,
                    ),
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const Sign()));
                    },
                    icon: const Icon(Icons.list),
                    label: const Text(
                      "Cadastro",
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
