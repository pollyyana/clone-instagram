import 'package:flutter/material.dart';
import 'package:insta/pages/home/feed_controller.dart';
import 'package:insta/pages/models/feed_model.dart';

class Feed extends StatefulWidget {
  const Feed({super.key});

  @override
  State<Feed> createState() => _FeedState();
}

class _FeedState extends State<Feed> {
  final FeedController controller = FeedController();
  Future<List<FeedModel>?>? feeds;
  @override
  void initState() {
    super.initState();
    alterarFeed();
  }

  void alterarFeed() {
    feeds = controller.pegarFeed();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: feeds,
      builder: (context, snapshot) {
        switch (snapshot.connectionState) {
          case ConnectionState.none:
          case ConnectionState.waiting:
            return const CircularProgressIndicator.adaptive();
          case ConnectionState.active:
          case ConnectionState.done:
            return SingleChildScrollView(
              child: (snapshot.data == null)
                  ? const SizedBox()
                  : Column(
                      children: snapshot.data!
                          .map<Widget>(
                            (feed) => Column(
                              children: [
                                Container(
                                  height: 50,
                                  width: 500,
                                  color: Colors.grey[200],
                                  child: Row(
                                    children: [
                                      CircleAvatar(
                                        backgroundImage: NetworkImage(feed.usuario.imagem),
                                      ),
                                      SizedBox(
                                        width: 200,
                                        // color: Colors.black,
                                        child: Padding(
                                          padding: const EdgeInsets.only(left: 12),
                                          child: Text(
                                            feed.usuario.nome,
                                            style: const TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 100),
                                        child: IconButton(
                                          onPressed: () {},
                                          icon: const Icon(
                                            Icons.menu_outlined,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  height: 400,
                                  width: 500,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(image: NetworkImage(feed.publi), fit: BoxFit.fill),
                                  ),
                                ),
                                Container(
                                  height: 50,
                                  width: 500,
                                  color: Colors.grey[200],
                                  child: Row(
                                    children: [
                                      IconButton(
                                        onPressed: () {},
                                        icon: const Icon(Icons.favorite),
                                      ),
                                      IconButton(
                                        onPressed: () {},
                                        icon: const Icon(Icons.message),
                                      ),
                                      IconButton(
                                        onPressed: () {},
                                        icon: const Icon(Icons.send),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          )
                          .toList()),

              //  ListView.separated(
              //     physics: NeverScrollableScrollPhysics(),
              //     shrinkWrap: true,
              //     itemBuilder: (_, index) {
              //       final feed = snapshot.data![index];
              //       return Column(
              //         children: [
              //           Container(
              //             height: 50,
              //             width: 500,
              //             color: Colors.grey[200],
              //             child: Row(
              //               children: [
              //                 // const Padding(padding: EdgeInsets.only(left: 10), child: ImageAvatar(urlImage: urlImage, nome: nome, aoVivo: aoVivo)
              //                 CircleAvatar(
              //                   backgroundImage: NetworkImage(feed.usuario.imagem),
              //                 ),
              //                 SizedBox(
              //                   width: 200,
              //                   // color: Colors.black,
              //                   child: Padding(
              //                     padding: const EdgeInsets.only(left: 12),
              //                     child: Text(
              //                       feed.usuario.nome,
              //                       style: const TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              //                     ),
              //                   ),
              //                 ),
              //                 Padding(
              //                   padding: const EdgeInsets.only(left: 100),
              //                   child: IconButton(
              //                     onPressed: () {},
              //                     icon: const Icon(
              //                       Icons.menu_outlined,
              //                     ),
              //                   ),
              //                 ),
              //               ],
              //             ),
              //           ),
              //           Container(
              //             height: 400,
              //             width: 500,
              //             decoration: BoxDecoration(
              //               image: DecorationImage(image: NetworkImage(feed.publi), fit: BoxFit.fill),
              //             ),
              //           ),
              //           Container(
              //             height: 50,
              //             width: 500,
              //             color: Colors.grey[200],
              //             child: Row(
              //               children: [
              //                 IconButton(
              //                   onPressed: () {},
              //                   icon: Icon(Icons.favorite),
              //                 ),
              //                 IconButton(
              //                   onPressed: () {},
              //                   icon: Icon(Icons.message),
              //                 ),
              //                 IconButton(
              //                   onPressed: () {},
              //                   icon: Icon(Icons.send),
              //                 ),
              //               ],
              //             ),
              //           ),
              //         ],
              //       );
              //     },
              //     separatorBuilder: (context, index) => const Divider(),
              //     itemCount: snapshot.data?.length ?? 0),
            );
        }
      },
    );
  }
}