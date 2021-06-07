import 'package:bookmemo/layout/layout_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';

import 'package:bookmemo/viewmodel/main_viewmodel.dart';

import 'model/main_view_model.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      home: StateNotifierProvider<MainViewModel, MainViewModelData>(
        create: (_) => MainViewModel(),
        child: LayoutPage(),
      )
    );
  }
}