import 'package:flutter/material.dart';

import 'image_avatar.dart';

class Stories extends StatelessWidget {
  const Stories({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Row(
              children: const [
                Padding(
                  padding: EdgeInsets.all(7.0),
                  child: ImageAvatar(
                      urlImage:
                          'https://cdn.culturagenial.com/imagens/raiva-0-cke.jpg'),
                ),
                Padding(
                  padding: EdgeInsets.all(7.0),
                  child: ImageAvatar(
                      urlImage:
                          'https://cdn.culturagenial.com/imagens/raiva-0-cke.jpg'),
                ),
                Padding(
                  padding: EdgeInsets.all(7.0),
                  child: ImageAvatar(
                    urlImage:
                        'https://cdn.culturagenial.com/imagens/raiva-0-cke.jpg',
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(7.0),
                  child: ImageAvatar(
                      urlImage:
                          'https://cdn.culturagenial.com/imagens/raiva-0-cke.jpg'),
                ),
                Padding(
                  padding: EdgeInsets.all(7.0),
                  child: ImageAvatar(
                      urlImage:
                          'https://cdn.culturagenial.com/imagens/raiva-0-cke.jpg'),
                ),
                Padding(
                  padding: EdgeInsets.all(7.0),
                  child: ImageAvatar(
                      urlImage:
                          'https://cdn.culturagenial.com/imagens/raiva-0-cke.jpg'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

