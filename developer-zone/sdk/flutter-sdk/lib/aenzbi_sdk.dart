library aenzbi_sdk;

import 'auth.dart';

class Aenzbi {
  static const String baseUrl = "https://api.aenzbi.com";

  static AenzbiAuth auth(String apiKey) {
    return AenzbiAuth(apiKey);
  }
}
