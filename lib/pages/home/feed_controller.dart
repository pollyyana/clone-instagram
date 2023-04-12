import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:insta/pages/models/feed_model.dart';
import 'package:insta/pages/models/user_model.dart';

class FeedController {
  Future<List<FeedModel>?> pegarFeed() async {
    // await Future.delayed(Duration(seconds: 4));
    final dados = await rootBundle.loadString('assets/usuarios.json');
    final jsonDados = json.decode(dados);
    final listUsers = (jsonDados['users'] as List).map((e) => User.fromMap(e)).toList();
    final feeds = (jsonDados['feed'] as List);
    final List<FeedModel> listaFeed = [];

    for (var feed in feeds) {
      final User usuario = listUsers.where((usuario) => usuario.id == feed['user']).first;
      listaFeed.add(FeedModel(id: feed['id'], publi: feed['publi'], usuario: usuario));
    }
    return listaFeed;
  }
}