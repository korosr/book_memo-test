// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'googlebooks_notifier.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GoogleBooksResponse _$_$_GoogleBooksResponseFromJson(
    Map<String, dynamic> json) {
  return _$_GoogleBooksResponse(
    totalCount: json['totalCount'] as int ?? 0,
    items: (json['items'] as List)
        ?.map((e) => e == null
            ? null
            : GoogleBookResponse.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$_$_GoogleBooksResponseToJson(
        _$_GoogleBooksResponse instance) =>
    <String, dynamic>{
      'totalCount': instance.totalCount,
      'items': instance.items,
    };
