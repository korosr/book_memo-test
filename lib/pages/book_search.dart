import 'package:bookmemo/model/google_book_response.dart';
import 'package:bookmemo/model/googlebooks_notifier.dart';
import 'package:bookmemo/model/main_view_model.dart';

import 'package:bookmemo/viewmodel/main_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';

class BookSearch extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    //検索用テキストエディットコントローラー
    final TextEditingController _searchQuery = new TextEditingController();

    ScrollController _scrollController;

    final response = context.select<MainViewModelData, GoogleBooksResponse>((data) => data.response);
    final state = context.select<MainViewModelData, MainViewModelState>((data) => data.viewModelState);
    final List<GoogleBookResponse> bookList = response != null ? response.items : [];

    Widget body = bookList.length > 0
        ? ListView(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        scrollDirection: Axis.vertical,
        controller: _scrollController,
        children: bookList
            .map((book) => Card(
            child: ListTile(
              leading: SizedBox(
                  height: 60.0,
                  width: 60.0,
                  child: book.volumeInfo.imageLinks != null
                      ? Image.network(
                    book.volumeInfo.imageLinks.smallThumbnail,
                    width: 10,
                    height: 10,
                  )
                      : Container()),
              title: Text(
                book.volumeInfo.title,
              ),
              subtitle: Text(
                book.volumeInfo.description != null
                    ? book.volumeInfo.description
                    : '',
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
              ),
              onTap: () => _launchURL(book.volumeInfo.infoLink),
            )))
            .toList())
        : Center(
      child: Padding(
        padding: EdgeInsets.all(24),
        child: Text(
          'ここに検索結果を表示する',
          style: TextStyle(fontSize: 19),
          textAlign: TextAlign.center,
        ),
      ),
    );

    if (state == MainViewModelState.loading) {
      body = Center(child: CircularProgressIndicator(),);
    } else if (state == MainViewModelState.error) {
      body = Center(
        child: Padding(
          padding: EdgeInsets.all(24),
          child: Text('エラーが発生しました。検索ワードを変えてお試しください', style: TextStyle(fontSize: 19), textAlign: TextAlign.center,),
        ),);
    }

    return SingleChildScrollView(
      child: Column(
        children: [
          TextField(
            controller: _searchQuery,
          ),
          IconButton(icon: Icon(Icons.search), onPressed: (){
            context.read<MainViewModel>().fetch(_searchQuery.text);
          }),
          Container(
            child: body,
          )
        ],
      ),
    );
  }

  _launchURL(String url) async{
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}
