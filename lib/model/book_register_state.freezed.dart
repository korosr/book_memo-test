// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'book_register_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$BookRegisterStateTearOff {
  const _$BookRegisterStateTearOff();

// ignore: unused_element
  _BookRegisterState call(
      {String title,
      String author,
      String description,
      DateTime registrationDate,
      String memo}) {
    return _BookRegisterState(
      title: title,
      author: author,
      description: description,
      registrationDate: registrationDate,
      memo: memo,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $BookRegisterState = _$BookRegisterStateTearOff();

/// @nodoc
mixin _$BookRegisterState {
  String get title;
  String get author;
  String get description;
  DateTime get registrationDate;
  String get memo;

  @JsonKey(ignore: true)
  $BookRegisterStateCopyWith<BookRegisterState> get copyWith;
}

/// @nodoc
abstract class $BookRegisterStateCopyWith<$Res> {
  factory $BookRegisterStateCopyWith(
          BookRegisterState value, $Res Function(BookRegisterState) then) =
      _$BookRegisterStateCopyWithImpl<$Res>;
  $Res call(
      {String title,
      String author,
      String description,
      DateTime registrationDate,
      String memo});
}

/// @nodoc
class _$BookRegisterStateCopyWithImpl<$Res>
    implements $BookRegisterStateCopyWith<$Res> {
  _$BookRegisterStateCopyWithImpl(this._value, this._then);

  final BookRegisterState _value;
  // ignore: unused_field
  final $Res Function(BookRegisterState) _then;

  @override
  $Res call({
    Object title = freezed,
    Object author = freezed,
    Object description = freezed,
    Object registrationDate = freezed,
    Object memo = freezed,
  }) {
    return _then(_value.copyWith(
      title: title == freezed ? _value.title : title as String,
      author: author == freezed ? _value.author : author as String,
      description:
          description == freezed ? _value.description : description as String,
      registrationDate: registrationDate == freezed
          ? _value.registrationDate
          : registrationDate as DateTime,
      memo: memo == freezed ? _value.memo : memo as String,
    ));
  }
}

/// @nodoc
abstract class _$BookRegisterStateCopyWith<$Res>
    implements $BookRegisterStateCopyWith<$Res> {
  factory _$BookRegisterStateCopyWith(
          _BookRegisterState value, $Res Function(_BookRegisterState) then) =
      __$BookRegisterStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {String title,
      String author,
      String description,
      DateTime registrationDate,
      String memo});
}

/// @nodoc
class __$BookRegisterStateCopyWithImpl<$Res>
    extends _$BookRegisterStateCopyWithImpl<$Res>
    implements _$BookRegisterStateCopyWith<$Res> {
  __$BookRegisterStateCopyWithImpl(
      _BookRegisterState _value, $Res Function(_BookRegisterState) _then)
      : super(_value, (v) => _then(v as _BookRegisterState));

  @override
  _BookRegisterState get _value => super._value as _BookRegisterState;

  @override
  $Res call({
    Object title = freezed,
    Object author = freezed,
    Object description = freezed,
    Object registrationDate = freezed,
    Object memo = freezed,
  }) {
    return _then(_BookRegisterState(
      title: title == freezed ? _value.title : title as String,
      author: author == freezed ? _value.author : author as String,
      description:
          description == freezed ? _value.description : description as String,
      registrationDate: registrationDate == freezed
          ? _value.registrationDate
          : registrationDate as DateTime,
      memo: memo == freezed ? _value.memo : memo as String,
    ));
  }
}

/// @nodoc
class _$_BookRegisterState implements _BookRegisterState {
  const _$_BookRegisterState(
      {this.title,
      this.author,
      this.description,
      this.registrationDate,
      this.memo});

  @override
  final String title;
  @override
  final String author;
  @override
  final String description;
  @override
  final DateTime registrationDate;
  @override
  final String memo;

  @override
  String toString() {
    return 'BookRegisterState(title: $title, author: $author, description: $description, registrationDate: $registrationDate, memo: $memo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _BookRegisterState &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.author, author) ||
                const DeepCollectionEquality().equals(other.author, author)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.registrationDate, registrationDate) ||
                const DeepCollectionEquality()
                    .equals(other.registrationDate, registrationDate)) &&
            (identical(other.memo, memo) ||
                const DeepCollectionEquality().equals(other.memo, memo)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(author) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(registrationDate) ^
      const DeepCollectionEquality().hash(memo);

  @JsonKey(ignore: true)
  @override
  _$BookRegisterStateCopyWith<_BookRegisterState> get copyWith =>
      __$BookRegisterStateCopyWithImpl<_BookRegisterState>(this, _$identity);
}

abstract class _BookRegisterState implements BookRegisterState {
  const factory _BookRegisterState(
      {String title,
      String author,
      String description,
      DateTime registrationDate,
      String memo}) = _$_BookRegisterState;

  @override
  String get title;
  @override
  String get author;
  @override
  String get description;
  @override
  DateTime get registrationDate;
  @override
  String get memo;
  @override
  @JsonKey(ignore: true)
  _$BookRegisterStateCopyWith<_BookRegisterState> get copyWith;
}
