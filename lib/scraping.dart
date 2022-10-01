import 'dart:async';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:html/dom.dart' as dom;

import 'models/article_class.dart';

class Scraping extends StatefulWidget {
  const Scraping({Key? key}) : super(key: key);

  @override
  State<Scraping> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<Scraping> {
  List<Article> articles = [];
  @override
  void initState() {
    super.initState();

    getWebsiteData();
  }

  Future getWebsiteData() async {
    final url = Uri.parse('https://www.amazon.com/s?k=iphone');
    final response = await http.get(url);
    dom.Document html = dom.Document.html(response.body);

    final titles = html
        .querySelectorAll('h2 > a > span')
        .map((element) => element.innerHtml.trim())
        .toList();
    final urls = html
        .querySelectorAll('h2 > a')
        .map(
            (element) => 'https://www.amazon.com/${element.attributes['href']}')
        .toList();

    debugPrint('Count: ${titles.length}');
    if (!mounted) {
      return;
    }
    setState(() {
      articles = List.generate(
        titles.length,
        (index) => Article(
          title: titles[index],
          url: urls[index],
        ),
      );
    });
    for (final title in titles) {
      debugPrint(title);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        title: const Text('Web Scraping'),
        centerTitle: true,
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(12),
        itemCount: articles.length,
        itemBuilder: (context, index) {
          final article = articles[index];
          return ListTile(
            title: Text(article.title),
            subtitle: Text(article.url),
          );
        },
      ),
    );
  }
}
