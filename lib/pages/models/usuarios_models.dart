import 'dart:convert';

// ignore_for_file: public_member_api_docs, sort_constructors_first
class Usuario {
  final String name;
  final String urlImage;
  final String aovivo;



  Usuario({
    required this.name,
    required this.urlImage,
    required this.aovivo,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'urlImage': urlImage,
      'aovivo': aovivo,
    };
  }

  factory Usuario.fromMap(Map<String, dynamic> map) {
    return Usuario(
      name: map['name'] as String,
      urlImage: map['urlImage'] as String,
      aovivo: map['aovivo'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory Usuario.fromJson(String source) => Usuario.fromMap(json.decode(source) as Map<String, dynamic>);
}
