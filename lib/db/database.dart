//import 'dart:io';
//
//import 'package:bookmemo/db/dao.dart';
//import 'package:moor/ffi.dart';
//import 'package:moor/moor.dart';
//import 'package:path_provider/path_provider.dart';
//import 'package:path/path.dart' as p;
//
//part 'database.g.dart';
//
//class BookRecords extends Table {
//
//  TextColumn get title => text()();
//
//  TextColumn get author => text()();
//
//  TextColumn get description => text()();
//
//  TextColumn get registrationDate => text()();
//
//  TextColumn get memo => text()();
//}
//
//@UseMoor(tables: [BookRecords], daos: [BookDao])
//class MyDatabase extends _$MyDatabase {
//
//  MyDatabase() : super(_openConnection());
//
//  @override
//  // TODO: implement schemaVersion
//  int get schemaVersion => 1;
//}