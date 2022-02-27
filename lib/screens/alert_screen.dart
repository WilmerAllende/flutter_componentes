import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AlertScreen extends StatelessWidget {
   
  const AlertScreen({Key? key}) : super(key: key);
  void  displayDialogIOS(BuildContext context){
    showCupertinoDialog(
      context: context, 
      builder: (context){
        return CupertinoAlertDialog(
          title: Text('Titulo IOS'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: const [
              Text('Este es el contenido del dialog para IOS'),
              SizedBox(height: 10),
              FlutterLogo( size: 100,)
            ],
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              }, 
              child: const Text('Cancelar', style: TextStyle( color: Colors.red),)
            ),
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              }, 
              child: const Text('Ok')
            ),
          ],

        );
      }
    );
  }
  
  void  displayDialogAndroid(BuildContext context){
    showDialog(
      barrierDismissible: false,
      context: context, 
      builder: (context) {
        return AlertDialog(
          elevation: 5,
          title: const Text('Tituloo'),
          shape: RoundedRectangleBorder(borderRadius: BorderRadiusDirectional.circular(10)),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: const [
              Text('Este es el contenido del dialog'),
              SizedBox(height: 10),
              FlutterLogo( size: 100,)
            ],
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              }, 
              child: const Text('Cancelar')
            ),
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              }, 
              child: const Text('Ok')
            ),
          ],
        );
      }
    );
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
         child: ElevatedButton(
           //onPressed: () => displayDialogIOS(context), 
           onPressed: () => Platform.isAndroid ? displayDialogAndroid(context) : displayDialogIOS(context),
           child: const Padding(
             padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
             child: Text('Mostrar alerta', style: TextStyle(fontSize: 18),),
           )
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.close) ,
        onPressed: (){Navigator.pop(context);}
        ),
    );
  }
}