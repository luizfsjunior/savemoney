import 'package:flutter/material.dart';
import 'package:flutter_startup/scan.dart';
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
        child: Padding(
          padding: const EdgeInsets.fromLTRB(0, 25, 0, 0),
          child: Column(
            children: [
              Container(
                height: 150,
                width: 320,
                color: Colors.grey,
              ),
              const SizedBox(height: 15),
              Container(
                height: 150,
                width: 320,
                color: Colors.grey,
              ),
              const SizedBox(height: 15),
              Container(
                height: 150,
                width: 320,
                color: Colors.grey,
              ),
              const SizedBox(height: 15),
              Container(
                height: 150,
                width: 320,
                color: Colors.grey,
              ),
            ],
          ),
        ),
      ),
      backgroundColor: Colors.blueGrey,
      floatingActionButton: FloatingActionButton.extended(
        backgroundColor: Colors.grey,
        onPressed: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => const Scraping()));
        },
        icon: const Icon(Icons.camera),
        label: const Text('Scraping'),
      ),
    );
  }
}
