import 'package:barcode_scan/barcode_scan.dart';
import 'package:bookmemo/model/book_repository.dart';

import 'package:bookmemo/model/google_book_response.dart';
import 'package:bookmemo/model/googlebooks_notifier.dart';
import 'package:bookmemo/service/googlebooks_api_service.dart';
import 'package:bookmemo/viewmodel/main_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';


class ScanPart extends StatefulWidget {
  @override
  _ScanPartState createState() => _ScanPartState();
}

class _ScanPartState extends State<ScanPart> {
  ScanResult scanResult;

//  BookRepository _bookRepository;
//
//  GoogleBooksResponse _responseBook;

  Future _scan() async {
    try {
      var result = await BarcodeScanner.scan();
      setState(() => scanResult = result);
    } on PlatformException catch (e) {
      var result = ScanResult(
        type: ResultType.Error,
        format: BarcodeFormat.unknown,
      );
      if (e.code == BarcodeScanner.cameraAccessDenied) {
        setState(() {
          //rawContent=結果のタイプがバーコードの場合はバーコード自体。結果のタイプがエラーの場合、エラー メッセージが含まれます。
          result.rawContent = "カメラへの接続が許可されていません";
        });
      } else {
        result.rawContent = "エラー：$e";
      }
      setState(() {
        scanResult = result;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    var contentList = <Widget>[
      if (scanResult != null)
        Card(
          child: Column(
            children: <Widget>[
              ListTile(
                title: Text("Result Type"),
                subtitle: Text(scanResult.type?.toString() ?? ""),
              ),
              ListTile(
                title: Text("RawContent"),
                subtitle: Text(scanResult.rawContent ?? ""),
              ),
              ListTile(
                title: Text("Format"),
                subtitle: Text(scanResult.format?.toString() ?? ""),
              ),
              ListTile(
                title: Text("Format note"),
                subtitle: Text(scanResult.formatNote ?? ""),
              ),
            ],
          ),
        ),
//        Container(
//          child: Text(
//            _responseBook.items[0].volumeInfo.title
//          ),
//        ),
      ListTile(
        title: Text("ボタンを押してカメラを起動してください"),
        subtitle: Text("カメラをコードに向けてください"),
      )
    ];
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.white, //change your color here
        ),
        title: Text(
          "バーコードから登録",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: ListView(
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        children: contentList,
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.camera_alt, color: Colors.white),
        tooltip: "バーコード読取",
        onPressed: _scan,
      ),
    );
  }


}
