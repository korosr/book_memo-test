import 'package:bookmemo/model/book_api.dart';
import 'package:bookmemo/model/googlebooks_notifier.dart';
import 'dart:convert';

class BookRepository {
  BookAPI get _bookAPI => BookAPI();

  Future<GoogleBooksResponse> fetchBookfromIsbn(String isbn) async {
    final result = await _bookAPI.fetchBookfromIsbn(isbn);
    if (result == null) {
      throw ("book not found");
    }
    final node = json.decode(result);
    return GoogleBooksResponse.fromJson(node['items'][0]['volumeInfo']);
  }
}
