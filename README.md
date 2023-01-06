<!--
This README describes the package. If you publish this package to pub.dev,
this README's contents appear on the landing page for your package.

For information about how to write a good package README, see the guide for
[writing package pages](https://dart.dev/guides/libraries/writing-package-pages).

For general information about developing packages, see the Dart guide for
[creating packages](https://dart.dev/guides/libraries/create-library-packages)
and the Flutter guide for
[developing packages and plugins](https://flutter.dev/developing-packages).
-->
# Manually constructing a Dynamic Link URL

FirebaseのDynamic Linkを生成します。  
FirebaseのDynamic Linkは現状Webに非対応ですが、以下の形式で手動で作成できます。  
https://firebase.google.com/docs/dynamic-links/create-manually

このパッケージは、上記の形式の通りにDynamic Linkを生成します。  
主に、以下のようなソーシャルメタデータを設定したいときに使います。  
https://firebase.google.com/docs/dynamic-links/link-previews

## Features

![example image](/images/example.png)
黄色枠の部分を生成します。  
Twitter等で共有すると、ツイート時に青色枠部分のようなプレビューが表示されます。

## Usage

```dart
DynamicLink.generate('example.page.link', 'https://www.example.com','title', 'description', 'https://URLtoImage.png');
```
Tweet button sample: `/example`

## Additional information
 - https://firebase.google.com/docs/dynamic-links/create-manually
 - https://firebase.google.com/docs/dynamic-links/link-previews
