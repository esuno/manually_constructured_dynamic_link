class DynamicLink {
  DynamicLink._() {
    throw AssertionError('private constructor.');
  }
  static String generate(String subdomain, String deepLink, String? socialTitle,
      String? socialDescription, String? socialImageUrl) {
    String encodedDeepLink = Uri.encodeFull(deepLink.replaceAll('#', '%23'));
    String socialMetaTagParameters = '';
    if (socialTitle != null) {
      socialMetaTagParameters +=
          '%26st=${Uri.encodeFull(Uri.encodeFull(socialTitle))}';
    }
    if (socialDescription != null) {
      socialMetaTagParameters +=
          '%26sd=${Uri.encodeFull(Uri.encodeFull(socialDescription))}';
    }
    if (socialImageUrl != null) {
      socialMetaTagParameters += '%26si=$socialImageUrl';
    }
    return 'https://$subdomain/?link=$encodedDeepLink$socialMetaTagParameters';
  }
}
