import 'package:flutter/cupertino.dart';

class Pessoa {
  String nome;
  String idade;
  String endereco;

  Pessoa({required this.nome, required this.idade, required this.endereco});

  Pessoa.fromJson(Map<String, dynamic> json)
      : nome = json['nome'],
        idade = json['idade'],
        endereco = json['endereco'];

  Map<String, dynamic> toJson() =>
      {'nome': nome, 'idade': idade, 'endereco': endereco};
}
