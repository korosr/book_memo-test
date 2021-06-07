import 'package:bookmemo/pages/book_list.dart';
import 'package:bookmemo/pages/config.dart';
import 'package:bookmemo/pages/friend_list.dart';
import 'package:bookmemo/pages/manual_book_register.dart';
import 'package:bookmemo/pages/want_list.dart';
import 'package:bookmemo/parts/scan_part.dart';
import 'package:flutter/material.dart';

class LayoutPage extends StatefulWidget {
  // ページ切り替え用のコントローラを定義
  @override
  _LayoutPageState createState() => _LayoutPageState();
}

class _LayoutPageState extends State<LayoutPage> {
  // ページ切り替え用のコントローラを定義
  PageController _pageController;

  // ページインデックス保存用
  int _screen = 0;
  ScrollController _scrollController;

  // ページ下部に並べるナビゲーションメニューの一覧
  List<BottomNavigationBarItem> myBottomNavBarItems() {
    return [
      BottomNavigationBarItem(
        icon: Icon(Icons.list),
        backgroundColor: Colors.grey,
        label: "本棚",
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.local_library),
        backgroundColor: Colors.grey,
        label: "読みたい",
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.people),
        backgroundColor: Colors.grey,
        label: "友達",
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.business_center),
        backgroundColor: Colors.grey,
        label: "設定",
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "BookMemo",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        leading: Icon(Icons.library_books, color: Colors.white),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.camera_alt, color: Colors.white),
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => ScanPart()));
            },
            tooltip: "バーコード読取",
          )
        ],
      ),
      body: PageView(
          controller: _pageController,
          // ページ切り替え時に実行する処理
          // PageViewのonPageChangedはページインデックスを受け取る
          // 以下ではページインデックスをindexとする
          onPageChanged: (index) {
            setState(() {
              //ページインデックスを更新
              _screen = index;
            });
          },
          children: [
            BookList(), //本棚
            WantList(), //読みたい
            FriendList(), //友達
            Config() //設定
          ]),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add, color: Colors.white),
        tooltip: "登録",
        onPressed: () => Navigator.push(
            this.context,
            MaterialPageRoute(
                builder: (context) =>
                    _screen == 0 ? ManualBookRegister() : null)),
      ),
      bottomNavigationBar: BottomNavigationBar(
        //現在のページのインデックス
        currentIndex: _screen,
        items: myBottomNavBarItems(),
        type: BottomNavigationBarType.fixed,
        fixedColor: Colors.blueAccent,
        onTap: (index) {
          setState(() {
            //ページインデックス更新
            _screen = index;
            //ページ遷移のアニメーション
            _pageController.animateToPage(index,
                duration: Duration(milliseconds: 10), curve: Curves.ease);
          });
        },
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    // コントローラ作成
    _pageController = PageController(
      initialPage: _screen, // 初期ページの指定。上記で_screenを１とすれば２番目のページが初期表示される。
    );

    _scrollController = ScrollController();
    _scrollController.addListener(() {
      final maxScrollExtent = _scrollController.position.maxScrollExtent;
      final currentPosition = _scrollController.position.pixels;
      if (maxScrollExtent > 0 && (maxScrollExtent - 20.0) <= currentPosition) {
        // TODO pagination
      }
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _pageController.dispose();
    super.dispose();
  }
}
