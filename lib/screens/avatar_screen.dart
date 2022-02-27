import 'package:flutter/material.dart';

class AvatarScreen extends StatelessWidget {
   
  const AvatarScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Avatars'),
        actions: [
          Container(
            margin: const EdgeInsets.only( right: 5),
            child: CircleAvatar(
              child: const Text('WIL'),
              backgroundColor: Colors.indigo[900],
            ),
          )
        ],
      ),
      body: const Center(
         child: CircleAvatar(
           maxRadius: 110,
           backgroundImage: NetworkImage('https://as01.epimg.net/meristation/imagenes/2021/02/08/noticias/1612786479_151283_1612786596_noticia_normal.jpg'),

         ),
      ),
    );
  }
}