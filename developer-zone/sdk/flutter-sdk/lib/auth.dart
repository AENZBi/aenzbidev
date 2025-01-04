import 'dart:convert';
import 'package:http/http.dart' as http;

class AenzbiAuth {
  final String apiKey;

  AenzbiAuth(this.apiKey);

  Future<Map<String, dynamic>> login(String username, String password) async {
    final response = await http.post(
      Uri.parse('${Aenzbi.baseUrl}/auth/login'),
      headers: {
        'Authorization': 'Bearer $apiKey',
        'Content-Type': 'application/json',
      },
      body: jsonEncode({
        'username': username,
        'password': password
      })
    );
    return jsonDecode(response.body);
  }
}
