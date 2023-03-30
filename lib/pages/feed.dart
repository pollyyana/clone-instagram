import 'package:flutter/material.dart';

class Feed extends StatelessWidget {
  const Feed({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 50,
          width: 500,
          color: Colors.grey[200],
          child: Row(
            children: [
              const Padding(
                padding: EdgeInsets.only(left: 10),
                child: CircleAvatar(
                  backgroundImage: NetworkImage(
                      'https://s2.glbimg.com/jJreidqJ8qEvwbyxipQ0H0xhqSk=/940x523/e.glbimg.com/og/ed/f/original/2018/11/29/jav_2468.jpg'),
                ),
              ),
              Container(
                width: 55,
                // color: Colors.black,
                child: Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Text(
                    'Samira',
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 255),
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
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: NetworkImage(
                    'https://pbs.twimg.com/media/Fnpj0OYWQAUek2B.jpg'),
                fit: BoxFit.fill),
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
                icon: Icon(Icons.favorite),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.favorite),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.favorite),
              ),
            ],
          ),
        ),
        //////////////////////////////////////////////////////
        Container(
          height: 50,
          width: 500,
          color: Colors.grey[200],
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: CircleAvatar(
                  backgroundImage: NetworkImage(
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTSwZnPDBVxETC4tF62BlPaTRc7ItwDgg8mp7pZdTTFa6ecZe6i1mVZPH3I77n6SjGz_CI&usqp=CAU'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Text(
                  'nome',
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 265),
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
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: NetworkImage(
                    'https://marketplace.canva.com/EAElCg_AAQQ/1/0/1600w/canva-gato-pata-na-cabe%C3%A7a-existencial-foto-e-texto-meme-UgLqqRNZtT4.jpg'),
                fit: BoxFit.fill),
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
                icon: Icon(Icons.favorite),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.favorite),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.favorite),
              ),
              
            ],
          ),
        ),

        ///////////////////////////////////////////////
        Container(
          height: 50,
          width: 500,
          color: Colors.grey[200],
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: CircleAvatar(
                  backgroundImage: NetworkImage(
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTSwZnPDBVxETC4tF62BlPaTRc7ItwDgg8mp7pZdTTFa6ecZe6i1mVZPH3I77n6SjGz_CI&usqp=CAU'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Text(
                  'nome',
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 265),
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
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: NetworkImage(
                    'https://img.ifunny.co/images/ced482ab668d4b87a136578f02fd0fb8ef27d9a2da30afb03d29ea4d226e2854_1.jpg'),
                fit: BoxFit.fill),
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
                icon: Icon(Icons.favorite),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.favorite),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.favorite),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
