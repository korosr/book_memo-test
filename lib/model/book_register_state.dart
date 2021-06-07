import 'package:freezed_annotation/freezed_annotation.dart';
part 'book_register_state.freezed.dart';

@freezed
abstract class BookRegisterState with _$BookRegisterState {
  //abstractのクラスではあるが、コンストラクタ生成できる
  const factory BookRegisterState({
    String title,
    String author,
    String description,
    DateTime registrationDate,
    String memo,
  }) = _BookRegisterState;
}
