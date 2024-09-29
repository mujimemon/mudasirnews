import 'dart:convert';
import 'package:http/http.dart' as http;

class NewsService {
  final String apiKey = '19e1a142d08c458f98b8b62eccb2c046';
  final String baseUrl = 'https://newsapi.org/v2/top-headlines';

  Future<List<dynamic>> fetchNews(String category) async {
    final response = await http.get(Uri.parse('$baseUrl?category=$category&apiKey=$apiKey'));

    if (response.statusCode == 200) {
      final Map<String, dynamic> data = json.decode(response.body);
      return data['articles'];
    } else {
      throw Exception('Failed to load news');
    }
  }
}
