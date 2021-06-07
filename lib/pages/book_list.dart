import 'package:bookmemo/model/google_book_response.dart';
import 'package:bookmemo/model/googlebooks_notifier.dart';

import 'package:bookmemo/viewmodel/main_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';

class BookList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: Text("本棚"),
      ),
    );
  }
}
