import 'package:flutter_test/flutter_test.dart';

import 'package:manually_constructured_dynamic_link/manually_constructured_dynamic_link.dart';

void main() {
  test('adds one to input values', () {
    const String subdomain = 'example.page.link';
    const String deepLink = 'https://www.example.com';
    const String socialTitle = 'title';
    const String socialDescription = 'description';
    const String socialImageUrl =
        'https://docs.flutter.dev/assets/images/dash/dash-fainting.gif';

    expect(
        DynamicLink.generate(subdomain, deepLink, socialTitle,
            socialDescription, socialImageUrl),
        'https://example.page.link/?link=https://www.example.com%26st=title%26sd=description%26si=https://docs.flutter.dev/assets/images/dash/dash-fainting.gif');
    expect(
        DynamicLink.generate(
            subdomain, deepLink, null, socialDescription, socialImageUrl),
        'https://example.page.link/?link=https://www.example.com%26sd=description%26si=https://docs.flutter.dev/assets/images/dash/dash-fainting.gif');
    expect(
        DynamicLink.generate(
            subdomain, deepLink, socialTitle, null, socialImageUrl),
        'https://example.page.link/?link=https://www.example.com%26st=title%26si=https://docs.flutter.dev/assets/images/dash/dash-fainting.gif');
    expect(
        DynamicLink.generate(
            subdomain, deepLink, socialTitle, socialDescription, null),
        'https://example.page.link/?link=https://www.example.com%26st=title%26sd=description');
    expect(DynamicLink.generate(subdomain, deepLink, socialTitle, null, null),
        'https://example.page.link/?link=https://www.example.com%26st=title');
    expect(
        DynamicLink.generate(
            subdomain, deepLink, null, socialDescription, null),
        'https://example.page.link/?link=https://www.example.com%26sd=description');
    expect(
        DynamicLink.generate(subdomain, deepLink, null, null, socialImageUrl),
        'https://example.page.link/?link=https://www.example.com%26si=https://docs.flutter.dev/assets/images/dash/dash-fainting.gif');
    expect(DynamicLink.generate(subdomain, deepLink, null, null, null),
        'https://example.page.link/?link=https://www.example.com');
  });
}
