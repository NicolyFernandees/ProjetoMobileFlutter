import 'package:flutter_restaurante/prato_model.dart';
import 'package:mysql_client/mysql_client.dart';

class PratoRepository {
  Future<MySQLConnection> openConnection() async {
    final conn = await MySQLConnection.createConnection(
      host: "127.0.0.1",
      port: 3306,
      userName: "root",
      password: "root",
      databaseName: "restaurante_db",
      secure: false,
    );

    await conn.connect();
    return conn;
  }

  Future<List<Prato>> get() async {
    List<Prato> listagem = [];

    var conn = await openConnection();

    var result = await conn.execute("SELECT * FROM prato");

    for (final row in result.rows) {
      Prato prato = Prato(
        id: int.parse(row.colByName("id")!),
        nome: row.colByName("nome"),
        descricao: row.colByName("descricao"),
        minutos: int.parse(row.colByName("tempo_preparo")!),
        preco: double.parse(row.colByName("preco")!),
      );

      listagem.add(prato);
    }

    conn.close();

    return listagem;
  }
}
