import 'package:sqflite/sqflite.dart';

import 'db_helper.dart';

/// @time 2020/9/1 9:21 AM
/// @author gyy
/// @describe: 数据库 管理

class DbManager {
  Future<Database> _db;

  //连接数据库
  Future<Database> _openDb(String dbName, int dbVersion) async {
    final database = await openDatabase(
      dbName,
      version: dbVersion,
      onOpen: _onOpen,
      onCreate: _onCreate,
      onUpgrade: _onUpgrade,
      onConfigure: _onConfigure,
      onDowngrade: _onDowngrade,
    );
    return database;
  }

  //数据库 初始化 1-
  void _onConfigure(Database db) {}

  //数据库 创建数据库(数据库不存在)  2-
  void _onCreate(Database db, int version) async {
    db.transaction((txn) async {
      var batch = txn.batch();
      DbHelper.db_table.forEach((table) async {
        batch.execute(table);
        await batch.commit();
      });
    });
  }

  //数据库 版本更新(当前指定版本 > 当前数据库版本) 2-
  void _onUpgrade(Database db, int oldVersion, int newVersion) {}

  //数据库 版本更新(当前指定版本 < 当前数据库版本)2-
  void _onDowngrade(Database db, int oldVersion, int newVersion) {}

  // 数据库 已配置完成 3-
  void _onOpen(Database db) {}

  //获取数据库对象
  Future<Database> getDb(String dbName, int dbVersion) {
    _db ?? _openDb(dbName, dbVersion);
    return _db;
  }
}
