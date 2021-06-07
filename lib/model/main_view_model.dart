import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:bookmemo/model/googlebooks_notifier.dart';

part 'main_view_model.freezed.dart';

//状態を通知するenum
enum MainViewModelState { normal, loading, error }

@freezed
abstract class MainViewModelData with _$MainViewModelData {
  const factory MainViewModelData({
    GoogleBooksResponse response,
    MainViewModelState viewModelState,
  }) = _MainViewModelData;
}
