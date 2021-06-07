import 'package:bookmemo/model/main_view_model.dart';
import 'package:state_notifier/state_notifier.dart';

import 'package:bookmemo/service/googlebooks_api_service.dart';

//MainViewModelDataの状態変化を通知
class MainViewModel extends StateNotifier<MainViewModelData> {

  MainViewModel() : super(MainViewModelData());

  void fetch(String keyword){
    state = state.copyWith(viewModelState: MainViewModelState.loading);
    getBooks(keyword).then((res){
      state = state.copyWith(response: res, viewModelState: MainViewModelState.normal);
    }).catchError((_){
      state = state.copyWith(response: null, viewModelState: MainViewModelState.error);
    });
  }

}
