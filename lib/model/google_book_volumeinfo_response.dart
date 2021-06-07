import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:bookmemo/model/google_book_image_links_response.dart';
part 'google_book_volumeinfo_response.freezed.dart';
part 'google_book_volumeinfo_response.g.dart';

@freezed
abstract class GoogleBookVolumeInfoResponse with _$GoogleBookVolumeInfoResponse {
  const factory GoogleBookVolumeInfoResponse({
    String title,
    String publisher,
    String publishedDate,
    String description,
    int pageCount,
    GoogleBookImageLinksResponse imageLinks,
    String infoLink
  }) = _GoogleBookVolumeInfoResponse;

  factory GoogleBookVolumeInfoResponse.fromJson(Map<String, dynamic> json) => _$GoogleBookVolumeInfoResponseFromJson(json);
}