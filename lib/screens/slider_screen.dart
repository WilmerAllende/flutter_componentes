import 'package:fl_components/theme/app_theme.dart';
import 'package:flutter/material.dart';

class SliderScreen extends StatefulWidget {
   
  const SliderScreen({Key? key}) : super(key: key);

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  double _sliderValue = 100;
  bool _sliderenabled = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Slider y checks Screen')
      ),
      body: Column(
        children: [
          Slider.adaptive(
            min: 50,
            max: 400,
            value: _sliderValue, 
            activeColor: AppTheme.primary,
            onChanged:_sliderenabled ? (value){
              _sliderValue = value;
              setState(() { });
            }
            : null
          ),
          Checkbox(
            value: _sliderenabled, 
            onChanged: (value){
              _sliderenabled = value ?? true;
              setState(() {});
            }
          ),
          CheckboxListTile(
            title: const Text('Habilitar slider'),
            activeColor: AppTheme.primary,
            value: _sliderenabled, 
            onChanged: (value){
              setState(() {
                _sliderenabled = value ?? true;
              });
            }
          ),
          Switch(
            value: _sliderenabled, 
            onChanged: (value){
              setState(() {
                _sliderenabled = value;
              });
            }
          ),
          SwitchListTile.adaptive(
            title: const Text('Habilitar slider'),
            activeColor: AppTheme.primary,
            value: _sliderenabled, 
            onChanged: (value){
              setState(() {
                _sliderenabled = value;
              });
            }
          ),
          const AboutListTile(),
          Expanded(
            child: SingleChildScrollView(
              child: Image(
                image: const NetworkImage('https://cdn.hobbyconsolas.com/sites/navi.axelspringer.es/public/styles/1200/public/media/image/2019/09/fairy-tail-ficha.jpg?itok=Z5UozH7O'),
                fit: BoxFit.contain,
                width: _sliderValue,
              ),
            ),
          ),
          const SizedBox(height: 50,)
        ],
      ),
    );
  }
}