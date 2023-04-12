
import 'package:flutter/material.dart';

class ImageAvatar extends StatelessWidget {
  const ImageAvatar({super.key, required this.urlImage, required String nome, required bool aoVivo});

  final String urlImage;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Row(
        children: [
          Stack(children: [
            Container( 
              height: 80,
              width: 80,
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                    colors: [Colors.red, Colors.orange, Colors.purpleAccent]),
                borderRadius: BorderRadius.circular(100),
                color: Colors.purple,
              ),
            ),
            SizedBox(
              height: 80,
              width: 80,
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: CircleAvatar(backgroundImage: NetworkImage(urlImage)),
              ),
            ),
            SizedBox(
              width: 80,
              height: 80,
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  padding: const EdgeInsets.all(5.0),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8), color: Colors.purple),
                  child: const Text(
                    'Ao vivo',
                    style: TextStyle(fontSize: 8, color: Colors.white,fontWeight: FontWeight.bold),
                  ),
                ),
                
              ),
            ),
            Row(
              children: const [
                SizedBox(
                  height: 100,
                  width: 80,
                  child: Align(
                    alignment: Alignment.bottomCenter,
                
                    child: Text(
                      'Brutus',
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 10),
                    ),
                  ),
                ),
              ],
            ),
          ]),
        ],
      ),
    );
  }
}
