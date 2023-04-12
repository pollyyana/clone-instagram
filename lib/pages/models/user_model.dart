
// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class User {
  final int id;
  final String nome;
  final bool aoVivo;
  final String imagem;
  User({
    required this.id,
    required this.nome,
    required this.aoVivo,
    required this.imagem,
  });

  User copyWith({
    int? id,
    String? nome,
    bool? aoVivo,
    String? imagem,
  }) {
    return User(
      id: id ?? this.id,
      nome: nome ?? this.nome,
      aoVivo: aoVivo ?? this.aoVivo,
      imagem: imagem ?? this.imagem,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'nome': nome,
      'aoVivo': aoVivo,
      'imagem': imagem,
    };
  }

  factory User.fromMap(Map<String, dynamic> map) {
    return User(
      id: map['id'] as int,
      nome: map['name'] as String,
      aoVivo: map['ao_vivo'] as bool,
      imagem: map['url_imagem'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory User.fromJson(String source) => User.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'User(id: $id, nome: $nome, aoVivo: $aoVivo, imagem: $imagem)';
  }

  @override
  bool operator ==(covariant User other) {
    if (identical(this, other)) return true;

    return other.id == id && other.nome == nome && other.aoVivo == aoVivo && other.imagem == imagem;
  }

  @override
  int get hashCode {
    return id.hashCode ^ nome.hashCode ^ aoVivo.hashCode ^ imagem.hashCode;
  }
}