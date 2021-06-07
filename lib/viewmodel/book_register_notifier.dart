import 'package:flutter/cupertino.dart';
import 'package:state_notifier/state_notifier.dart';

class BookRegisterNotifier extends StateNotifier<BookRegisterNotifier>{

  BookRegisterNotifier(BookRegisterNotifier state, this.context) : super(state);

  final BuildContext context;

  @override
  void dispose() {
    print('dispose');
    super.dispose();
  }

  @override
  void initState() {}

}