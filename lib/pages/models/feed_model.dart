// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:insta/pages/models/user_model.dart';

class FeedModel {
  final int id;
  final String publi;
  final User usuario;
  FeedModel({
    required this.id,
    required this.publi,
    required this.usuario,
  });

  FeedModel copyWith({
    int? id,
    String? publi,
    User? usuario,
  }) {
    return FeedModel(
      id: id ?? this.id,
      publi: publi ?? this.publi,
      usuario: usuario ?? this.usuario,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'publi': publi,
      'usuario': usuario.toMap(),
    };
  }

  factory FeedModel.fromMap(Map<String, dynamic> map) {
    return FeedModel(
      id: map['id'] as int,
      publi: map['publi'] as String,
      usuario: User.fromMap(map['usuario'] as Map<String, dynamic>),
    );
  }

  String toJson() => json.encode(toMap());

  factory FeedModel.fromJson(String source) => FeedModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'FeedModel(id: $id, publi: $publi, usuario: $usuario)';

  @override
  bool operator ==(covariant FeedModel other) {
    if (identical(this, other)) return true;

    return other.id == id && other.publi == publi && other.usuario == usuario;
  }

  @override
  int get hashCode => id.hashCode ^ publi.hashCode ^ usuario.hashCode;
}