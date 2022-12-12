import 'package:NewsApp/model/article_model.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ArticlePage extends StatelessWidget {
  final Article article;

  ArticlePage({this.article});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(article.title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 200.0,
              width: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(article.urlToImage), fit: BoxFit.cover),
                borderRadius: BorderRadius.circular(12.0),
              ),
            ),
            SizedBox(
              height: 8.0,
            ),
            Container(
              padding: EdgeInsets.all(6.0),
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(30.0),
              ),
              child: Text(
                article.source.name,
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(
              height: 8.0,
            ),
            Text(
              article.description,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16.0,
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              article.content,
              style: TextStyle(
                fontWeight: FontWeight.normal,
                fontSize: 16.0,
              ),
            ),
            SizedBox(
              height: 5.0,
            ),
            Text(
              'Baca Selengkapnya di',
              style: TextStyle(
                fontWeight: FontWeight.normal,
                fontSize: 16.0,
              ),
            ),
            InkWell(
              onTap: () => launchUrl(Uri.parse(article.url)),
              child: Text(
                'Click here',
                style: TextStyle(
                    decoration: TextDecoration.underline, color: Colors.blue),
              ),
            )
          ],
        ),
      ),
    );
  }
}
