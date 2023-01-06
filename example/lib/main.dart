import 'package:flutter/material.dart';
import './tweet_button.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'manually_constructured_dynamic_link Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'manually_constructured_dynamic_link Demo'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: const Center(child: Text('example')),
        floatingActionButton: const DynamicLinkTweetButton(
          buttonLabel: 'Tweet',
          tweetText: 'text example',
          hashtags: 'esunoDev_dynamic_links',
          subdomain: 'example.page.link',
          deepLink: 'https://www.example.com',
          socialTitle: 'OGP test',
          socialDescription: 'manually_constructured_dynamic_link Demo',
          socialImageUrl:
              'https://farm6.staticflickr.com/5510/14338202952_93595258ff_z.jpg',
        ));
  }
}
