import 'package:flutter/material.dart';

import 'home/stories_controller.dart';
import 'image_avatar.dart';

class Stories extends StatelessWidget {
  Stories({super.key});
  final StorieController controller = StorieController();
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: controller.pegarStories(),
      builder: (context, snapshot) {
        switch (snapshot.connectionState) {
          case ConnectionState.none:
            return const Text('AGUARDE');
          case ConnectionState.waiting:
            return const CircularProgressIndicator.adaptive();
          case ConnectionState.active:
          case ConnectionState.done:
            if (snapshot.hasError) {
              return Container(
                color: Colors.red,
                child: const Text("Erro ao receber conteudo"),
              );
            }

            if (!snapshot.hasData) {
              return Container(
                color: Colors.green,
                child: const Text('Nenhum dado encontrado'),
              );
            }

            return SizedBox(
              height: 120,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: snapshot.data?.length ?? 0,
                itemBuilder: (_, index) {
                  final storie = snapshot.data![index];

                  return Padding(
                    padding: const EdgeInsets.all(7.0),
                    child: ImageAvatar(
                      urlImage: storie.imagem,
                      aoVivo: storie.aoVivo,
                      nome: storie.nome,
                    ),
                  );
                },
              ),
            );
        }
      },
    );
  }
}

    // return SingleChildScrollView(
    //   scrollDirection: Axis.horizontal,
    //   child: Column(
    //     children: [
    //       Padding(
    //         padding: const EdgeInsets.all(5.0),
    //         child: Row(
    //           children: const [
    //             Padding(
    //               padding: EdgeInsets.all(7.0),
    //               child: ImageAvatar(
    //                   urlImage:
    //                       'https://cdn.culturagenial.com/imagens/raiva-0-cke.jpg'),
    //             ),
    //             Padding(
    //               padding: EdgeInsets.all(7.0),
    //               child: ImageAvatar(
    //                   urlImage:
    //                       'https://cdn.culturagenial.com/imagens/raiva-0-cke.jpg'),
    //             ),
    //             Padding(
    //               padding: EdgeInsets.all(7.0),
    //               child: ImageAvatar(
    //                 urlImage:
    //                     'https://cdn.culturagenial.com/imagens/raiva-0-cke.jpg',
    //               ),
    //             ),
    //             Padding(
    //               padding: EdgeInsets.all(7.0),
    //               child: ImageAvatar(
    //                   urlImage:
    //                       'https://cdn.culturagenial.com/imagens/raiva-0-cke.jpg'),
    //             ),
    //             Padding(
    //               padding: EdgeInsets.all(4.0),
    //               child: ImageAvatar(
    //                   urlImage:
    //                       'https://cdn.culturagenial.com/imagens/raiva-0-cke.jpg'),
    //             ),
    //             Padding(
    //               padding: EdgeInsets.all(7.0),
    //               child: ImageAvatar(
    //                   urlImage:
    //                       'https://cdn.culturagenial.com/imagens/raiva-0-cke.jpg'),
    //             ),
    //           ],
    //         ),
    //       ),
    //     ],
    //   ),
    // );
  

