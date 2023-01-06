import 'package:flutter/material.dart';
// ignore: avoid_web_libraries_in_flutter
import 'dart:html' as html;
import 'package:manually_constructured_dynamic_link/manually_constructured_dynamic_link.dart';

class TweetButton extends StatelessWidget {
  const TweetButton(
      {super.key,
      required this.buttonLabel,
      required this.hashtags,
      required this.url,
      required this.text});
  final String buttonLabel;
  final String hashtags;
  final String url;
  final String text;

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton.extended(
      onPressed: () => {
        html.window.open(
            'https://twitter.com/intent/tweet?text=$text%0A&hashtags=$hashtags&url=$url',
            '')
      },
      tooltip: 'tweet',
      label: const Text('Tweet Button'),
    );
  }
}

class DynamicLinkTweetButton extends StatelessWidget {
  const DynamicLinkTweetButton(
      {super.key,
      required this.buttonLabel,
      required this.hashtags,
      required this.tweetText,
      required this.subdomain,
      required this.deepLink,
      required this.socialTitle,
      required this.socialDescription,
      required this.socialImageUrl});
  final String buttonLabel;
  final String hashtags;
  final String tweetText;
  final String subdomain;
  final String deepLink;
  final String socialTitle;
  final String socialDescription;
  final String socialImageUrl;

  @override
  Widget build(BuildContext context) {
    return TweetButton(
      buttonLabel: buttonLabel,
      hashtags: hashtags,
      text: tweetText,
      url: DynamicLink.generate(
          subdomain, deepLink, socialTitle, socialDescription, socialImageUrl),
    );
  }
}
