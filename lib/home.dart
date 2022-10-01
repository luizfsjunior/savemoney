import 'package:flutter/material.dart';
import 'package:flutter_startup/box.dart';
import 'package:flutter_startup/scraping.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Padding(
          padding: EdgeInsets.fromLTRB(60, 0, 0, 0),
          child: Text('Save Money'),
        ),
        backgroundColor: Colors.grey,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 100,
              width: 320,
              color: Colors.grey,
            ),
            const SizedBox(height: 15),
            Container(
              height: 100,
              width: 320,
              color: Colors.grey,
            ),
            const SizedBox(height: 15),
            Container(
              height: 100,
              width: 320,
              color: Colors.grey,
            ),
            const SizedBox(height: 15),
            Container(
              height: 100,
              width: 320,
              color: Colors.grey,
            ),
          ],
        ),
      ),
      backgroundColor: Colors.blueGrey,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            FloatingActionButton.extended(
              backgroundColor: Colors.grey,
              onPressed: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => const Scraping()));
              },
              heroTag: 'buttom1',
              icon: const Icon(Icons.camera),
              label: const Text('Scraping'),
            ),
            FloatingActionButton.extended(
                backgroundColor: Colors.grey,
                onPressed: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => const Box()));
                },
                heroTag: 'buttom2',
                icon: const Icon(Icons.list),
                label: const Text('Base de dados'))
          ],
        ),
      ),
    );
  }
}
