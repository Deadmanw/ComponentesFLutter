import 'package:compoentesvarios/widgets/appBarP.dart';
import 'package:flutter/material.dart';

class SliderScreen extends StatefulWidget {
  const SliderScreen({Key? key}) : super(key: key);

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  double _sliderValue = 100;
  bool _sliderEnable = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Slider and Checks'),
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 5),
            child: const CircleAvatar(
              backgroundColor: Colors.grey,
              child: Text('Luffy'),
            ),
          )
        ],
      ),
      body: Column(
        children: [
          Slider.adaptive(
            activeColor: appTheme.indigoColor,
            divisions: 10,
            min: 50,
            max: 400,
            value: _sliderValue,
            onChanged: _sliderEnable
                ? (value) {
                    _sliderValue = value;
                    setState(() {});
                    print(value);
                  }
                : null,
          ),
          Checkbox(
            value: _sliderEnable,
            onChanged: (value) {
              _sliderEnable = value ?? true;
              setState(() {});
            },
            activeColor: Colors.indigo,
          ),
          CheckboxListTile(
            title: Text('Habilitar Slider'),
            value: _sliderEnable,
            onChanged: (value) {
              setState(() {
                _sliderEnable = value ?? true;
              });
            },
            activeColor: Colors.indigo,
          ),
          Switch.adaptive(
            activeColor: Colors.indigo,
            value: _sliderEnable,
            onChanged: (value) {
              setState(() {
                _sliderEnable = value;
              });
            },
          ),
          SwitchListTile.adaptive(
            activeColor: Colors.indigo,
            title: Text('Habilitar Slider'),
            value: _sliderEnable,
            onChanged: (value) {
              setState(() {
                _sliderEnable = value;
              });
            },
          ),
          const AboutListTile(child: Text('Licencias')),
          SizedBox(
            height: 50,
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Image(
                fit: BoxFit.contain,
                width: _sliderValue,
                image: NetworkImage(
                  'https://pngimg.com/uploads/batman/batman_PNG51.png',
                ),
              ),
            ),
          ),
          SizedBox(
            height: 50,
          )
        ],
      ),
    );
  }
}
