import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:bookmemo/model/google_book_response.dart';
part 'googlebooks_notifier.freezed.dart';
part 'googlebooks_notifier.g.dart';

@freezed
abstract class GoogleBooksResponse with _$GoogleBooksResponse{
  const factory GoogleBooksResponse({

    @Default(0) int totalCount,
    List<GoogleBookResponse> items,
  }) = _GoogleBooksResponse;

  factory GoogleBooksResponse.fromJson(Map<String, dynamic> json) => _$GoogleBooksResponseFromJson(json);
}