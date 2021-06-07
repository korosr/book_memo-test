import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:bookmemo/model/google_book_volumeinfo_response.dart';
part 'google_book_response.freezed.dart';
part 'google_book_response.g.dart';

@freezed
abstract class GoogleBookResponse with _$GoogleBookResponse {
  const factory GoogleBookResponse({
    String kind,
    String id,
    String etag,
    GoogleBookVolumeInfoResponse volumeInfo,
    int totalItems
  }) = _GoogleBookResponse;

  factory GoogleBookResponse.fromJson(Map<String, dynamic> json) => _$GoogleBookResponseFromJson(json);
}