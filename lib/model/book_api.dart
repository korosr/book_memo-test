import 'package:http/http.dart' as http;

class BookAPI {
  Future<String> fetchBookfromIsbn(String isbn) async {
    final String url = 'https://www.googleapis.com/books/v1/volumes?q=isbn:';
    final result = await http.get(url + isbn);
    return result.body;
  }
}