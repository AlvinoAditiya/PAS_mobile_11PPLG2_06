import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class DBHelper {
  static Database? db;

  static Future<void> initDB() async {
    final path = join(await getDatabasesPath(), "tv.db");
    db = await openDatabase(path, version: 1, onCreate: (db, version) async {
      await db.execute("""
        CREATE TABLE tv(
          id INTEGER PRIMARY KEY,
          title TEXT,
          image TEXT,
          price REAL
        )
      """);
    });
  }

  static Future<int> addTV(Map<String, dynamic> data) async {
    return await db!.insert('tv', data,
        conflictAlgorithm: ConflictAlgorithm.replace);
  }

  static Future<List<Map<String, dynamic>>> getTV() async {
    return await db!.query('tv');
  }

  static Future<int> deleteTV(int id) async {
    return await db!.delete('tv', where: 'id=?', whereArgs: [id]);
  }
}
