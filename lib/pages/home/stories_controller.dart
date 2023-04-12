import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:insta/pages/models/user_model.dart';

class StorieController {
  Future<List<User>?> pegarStories() async {
    // await Future.delayed(Duration(seconds: 4));
    final dados = await rootBundle.loadString('assets/usuarios.json');
    final jsonDados = json.decode(dados);
    final listStorie = (jsonDados['users'] as List).map((e) => User.fromMap(e)).toList();
    return listStorie;
  }
}