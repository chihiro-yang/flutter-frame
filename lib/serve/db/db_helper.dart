class DbHelper {
  //数据库名称
  static const db_name = "db_name";

  //数据库版本
  static const db_version = 1;

  //数据库表
  static const db_table = [user_table];

  //用户表(参照 官网)
  static const user_table =
      'CREATE TABLE Test (id INTEGER PRIMARY KEY, name TEXT, value INTEGER, num REAL)';
}
