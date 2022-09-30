// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

void main() {
  runApp(const MaterialApp(
    home: Box(),
  ));
}

class Box extends StatefulWidget {
  const Box({super.key});

  @override
  _State createState() => _State();
}

class _State extends State<Box> {
  CollectionReference data = FirebaseFirestore.instance.collection('data');
  late String textCode;
  late String textName;
  late String price;
  late String marketName;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        title: const Text('Base de dados'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(15),
              child: TextField(
                onChanged: (value) {
                  textCode = value;
                },
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Codigo do Produto',
                  hintText: 'Insira o Codigo do Produto',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: TextField(
                onChanged: (value) {
                  textName = value;
                },
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Nome do Produto',
                  hintText: 'Insira o valor do Produto',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: TextField(
                onChanged: (value) {
                  price = value;
                },
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Preço',
                  hintText: 'Insira o preço do produto',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: TextField(
                onChanged: (value) {
                  marketName = value;
                },
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Supermercado',
                  hintText: 'Insira o nome do supermercado',
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Padding(
        padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
        child: FloatingActionButton.extended(
            backgroundColor: Colors.grey,
            onPressed: () async {
              await data.add({
                'codigo': textCode,
                'nomeproduto': textName,
                'supermercado': marketName,
                'valor': price
              }).then((value) => print('produto cadastrado'));
            },
            icon: const Icon(Icons.check),
            label: const Text('Cadastrar')),
      ),
    );
  }
}
