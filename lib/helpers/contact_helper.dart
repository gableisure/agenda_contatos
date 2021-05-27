import 'package:sqflite/sqflite.dart';

// varáveis com os nomes das colunas da tabela
// "final" pois esses valores não irão mudar
final String idColumn = "idColumn";
final String nameColumn = "nameColumn";
final String emailColumn = "emailColumn";
final String phoneColumn = "phoneColumn";
final String imgColumn = "imgColumn";


class ContactHelper {

}

class Contact {

  // variáveis
  int id;
  String name;
  String email;
  String phone;
  String img;

  // Construtor para definir as variáveis do contato a partir de um Map
  Contact.fromMap(Map map) {
    id = map[idColumn];
    name = map[nameColumn];
    email = map[emailColumn];
    phone = map[phoneColumn];
    img = map[imgColumn];
  }

  Map toMap() {
    Map<String, dynamic> map = {
      nameColumn: name,
      emailColumn: email,
      phoneColumn: phone,
      imgColumn: img
    };
    if(id != null) map[idColumn] = id;

    return map;
  }

  @override
  String toString() => "Contact(id: $id, name: $name, email: $email, phone: $phone, img: $img)";

}