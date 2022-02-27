import 'package:fl_components/widgets/widgets.dart';
import 'package:flutter/material.dart';

class CardScreen extends StatelessWidget {
   
  const CardScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Card Wdiget'),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric( horizontal: 20, vertical: 10 ),
        children: const [
          CustomCardType1(),
          SizedBox(height: 10,),
          CustomCardType2(imageUrl: 'https://i1.wp.com/codigoespagueti.com/wp-content/uploads/2022/01/Kimetsu-no-Yiaba-eventos-2022.jpg?fit=1280%2C720&quality=80&ssl=1',
                          name: 'Kimetsu no Yaiba',),
          SizedBox(height: 20,),
          CustomCardType2(imageUrl: 'https://as01.epimg.net/meristation/imagenes/2021/07/13/videos/1626171942_464755_1626172087_noticia_normal.jpg',
                          name: 'Kimetsu 2',),
          SizedBox(height: 20,),
          CustomCardType2(imageUrl: 'https://cloudfront-us-east-1.images.arcpublishing.com/gruporepublica/ZBRATQHB2ZEX3HV4ACZL5DV3UY.jpg',)
        ],
      ),
    );
  }
}

