import 'package:flutter/material.dart';

class NavegacaoBaixo extends StatefulWidget {
  const NavegacaoBaixo({Key? key}) : super(key: key);

  @override
  State<NavegacaoBaixo> createState() => _NavegacaoBaixoState();
}

class _NavegacaoBaixoState extends State<NavegacaoBaixo> {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(2.0),
        child: SizedBox(
            height: 50,
            width: 420,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 15, right: 15),
                  child: IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.home_filled),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15, right: 15),
                  child: IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.search),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15, right: 15),
                  child: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.library_add,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.shop),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.face_3),
                  ),
                ),
                
              ],
            )));
  }
}



// BottomNavigationBar(items: [
//                   BottomNavigationBarItem(
//                     icon: Icon(
//                       Icons.home_filled,
//                     ),
//                   ),
//                   BottomNavigationBarItem(
//                     icon: Icon(
//                       Icons.search,
//                     ),),
//                     BottomNavigationBarItem(
//                     icon: Icon(
//                       Icons.library_add,
//                     ),),
//                     BottomNavigationBarItem(
//                     icon: Icon(
//                       Icons.shop,
//                     ),),
//                     BottomNavigationBarItem(
//                     icon: Icon(
//                       Icons.face_6,
//                     ),),
//                 ])