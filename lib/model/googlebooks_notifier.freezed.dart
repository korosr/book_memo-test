// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'googlebooks_notifier.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
GoogleBooksResponse _$GoogleBooksResponseFromJson(Map<String, dynamic> json) {
  return _GoogleBooksResponse.fromJson(json);
}

/// @nodoc
class _$GoogleBooksResponseTearOff {
  const _$GoogleBooksResponseTearOff();

// ignore: unused_element
  _GoogleBooksResponse call(
      {int totalCount = 0, List<GoogleBookResponse> items}) {
    return _GoogleBooksResponse(
      totalCount: totalCount,
      items: items,
    );
  }

// ignore: unused_element
  GoogleBooksResponse fromJson(Map<String, Object> json) {
    return GoogleBooksResponse.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $GoogleBooksResponse = _$GoogleBooksResponseTearOff();

/// @nodoc
mixin _$GoogleBooksResponse {
  int get totalCount;
  List<GoogleBookResponse> get items;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $GoogleBooksResponseCopyWith<GoogleBooksResponse> get copyWith;
}

/// @nodoc
abstract class $GoogleBooksResponseCopyWith<$Res> {
  factory $GoogleBooksResponseCopyWith(
          GoogleBooksResponse value, $Res Function(GoogleBooksResponse) then) =
      _$GoogleBooksResponseCopyWithImpl<$Res>;
  $Res call({int totalCount, List<GoogleBookResponse> items});
}

/// @nodoc
class _$GoogleBooksResponseCopyWithImpl<$Res>
    implements $GoogleBooksResponseCopyWith<$Res> {
  _$GoogleBooksResponseCopyWithImpl(this._value, this._then);

  final GoogleBooksResponse _value;
  // ignore: unused_field
  final $Res Function(GoogleBooksResponse) _then;

  @override
  $Res call({
    Object totalCount = freezed,
    Object items = freezed,
  }) {
    return _then(_value.copyWith(
      totalCount: totalCount == freezed ? _value.totalCount : totalCount as int,
      items:
          items == freezed ? _value.items : items as List<GoogleBookResponse>,
    ));
  }
}

/// @nodoc
abstract class _$GoogleBooksResponseCopyWith<$Res>
    implements $GoogleBooksResponseCopyWith<$Res> {
  factory _$GoogleBooksResponseCopyWith(_GoogleBooksResponse value,
          $Res Function(_GoogleBooksResponse) then) =
      __$GoogleBooksResponseCopyWithImpl<$Res>;
  @override
  $Res call({int totalCount, List<GoogleBookResponse> items});
}

/// @nodoc
class __$GoogleBooksResponseCopyWithImpl<$Res>
    extends _$GoogleBooksResponseCopyWithImpl<$Res>
    implements _$GoogleBooksResponseCopyWith<$Res> {
  __$GoogleBooksResponseCopyWithImpl(
      _GoogleBooksResponse _value, $Res Function(_GoogleBooksResponse) _then)
      : super(_value, (v) => _then(v as _GoogleBooksResponse));

  @override
  _GoogleBooksResponse get _value => super._value as _GoogleBooksResponse;

  @override
  $Res call({
    Object totalCount = freezed,
    Object items = freezed,
  }) {
    return _then(_GoogleBooksResponse(
      totalCount: totalCount == freezed ? _value.totalCount : totalCount as int,
      items:
          items == freezed ? _value.items : items as List<GoogleBookResponse>,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_GoogleBooksResponse implements _GoogleBooksResponse {
  const _$_GoogleBooksResponse({this.totalCount = 0, this.items})
      : assert(totalCount != null);

  factory _$_GoogleBooksResponse.fromJson(Map<String, dynamic> json) =>
      _$_$_GoogleBooksResponseFromJson(json);

  @JsonKey(defaultValue: 0)
  @override
  final int totalCount;
  @override
  final List<GoogleBookResponse> items;

  @override
  String toString() {
    return 'GoogleBooksResponse(totalCount: $totalCount, items: $items)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GoogleBooksResponse &&
            (identical(other.totalCount, totalCount) ||
                const DeepCollectionEquality()
                    .equals(other.totalCount, totalCount)) &&
            (identical(other.items, items) ||
                const DeepCollectionEquality().equals(other.items, items)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(totalCount) ^
      const DeepCollectionEquality().hash(items);

  @JsonKey(ignore: true)
  @override
  _$GoogleBooksResponseCopyWith<_GoogleBooksResponse> get copyWith =>
      __$GoogleBooksResponseCopyWithImpl<_GoogleBooksResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_GoogleBooksResponseToJson(this);
  }
}

abstract class _GoogleBooksResponse implements GoogleBooksResponse {
  const factory _GoogleBooksResponse(
      {int totalCount,
      List<GoogleBookResponse> items}) = _$_GoogleBooksResponse;

  factory _GoogleBooksResponse.fromJson(Map<String, dynamic> json) =
      _$_GoogleBooksResponse.fromJson;

  @override
  int get totalCount;
  @override
  List<GoogleBookResponse> get items;
  @override
  @JsonKey(ignore: true)
  _$GoogleBooksResponseCopyWith<_GoogleBooksResponse> get copyWith;
}
