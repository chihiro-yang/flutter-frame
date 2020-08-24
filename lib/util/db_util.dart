import 'package:sqflite/sqlite_api.dart';

import '../serve/db/db_manager.dart';

class DbUtil {
  static Database _database;

  //初始化
  static void initDb(String dbName, int dbVersion) {
    try {
      DbManager().getDb(dbName, dbVersion).then((db) => _database);
    } catch (e) {
      print("数据库初始化失败-------------------------------->>>" + e);
    }
  }

  //创建表
  static Future<void> createTable(String sql, [List<dynamic> arguments]) async {
    try {
      await _database.transaction((txn) async {
        txn.execute(sql, arguments);
      });
    } catch (e) {
      print("数据库表创建失败-------------------------------->>>" + e);
    }
  }

  //关闭
  static void closeDb() {
    try {
      _database.close();
    } catch (e) {
      print("数据库关闭失败-------------------------------->>>" + e);
    }
  }

  //插入
  static void insertDate(String tableName, Map<String, Object> values,
      String nullColumnHack, ConflictAlgorithm conflictAlgorithm) async {
    try {
      _database.transaction((txn) async {
        await txn.insert(tableName, values,
            nullColumnHack: nullColumnHack, conflictAlgorithm: conflictAlgorithm);
      });
    } catch (e) {
      print("数据插入失败-------------------------------->>>" + e);
    }
  }

  //删除
  static void deleteDate(String daName, {String where, List<Object> whereArgs}) async {
    try {
      await _database.transaction((txn) async {
        await txn.delete(daName, where: where, whereArgs: whereArgs);
      });
    } catch (e) {
      print("数据删除失败-------------------------------->>>" + e);
    }
  }

  //更改
  static void updateDate(String tableName, Map<String, Object> values,
      {String where, List<Object> whereArgs, ConflictAlgorithm conflictAlgorithm}) async {
    try {
      await _database.transaction((txn) async {
        await txn.update(tableName, values,
            where: where, whereArgs: whereArgs, conflictAlgorithm: conflictAlgorithm);
      });
    } catch (e) {
      print("数据更新失败-------------------------------->>>" + e);
    }
  }

  //查询
  static void queryDate(
    String tableName, {
    String where,
    List<Object> whereArgs,
    bool distinct,
    List<String> columns,
    String groupBy,
    String having,
    String orderBy,
    int limit,
    int offset,
  }) async {
    try {
      await _database.query(tableName,
          where: where,
          whereArgs: whereArgs,
          distinct: distinct,
          columns: columns,
          groupBy: groupBy,
          having: having,
          orderBy: orderBy,
          limit: limit,
          offset: offset);
    } catch (e) {
      print("数据查询失败-------------------------------->>>" + e);
    }
  }
}
