import 'dart:developer';

import 'package:appwithmongodb/constant.dart';
import 'package:mongo_dart/mongo_dart.dart';

class MongoDatabase {
  static connect() async {
    var db = await Db.create(MONGO_URL);
    // espera y abre la conexion
    await db.open();
    // trae los datos
    inspect(db);
    // se utiliza cuando queramos hacer algo en la BD --> relacion con el crud
    var collection = db.collection(COLLECTION_NAME);
  }
}
