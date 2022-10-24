import 'package:fl_components/theme/app_theme.dart';
import 'package:flutter/material.dart';

class SliderScreen extends StatefulWidget {
  const SliderScreen({Key? key}) : super(key: key);

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  double _sliderValue = 100;
  bool _sliderEnabled = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Slider & Checks"),
      ),
      body: Column(
        children: [
          Slider.adaptive(
              value: _sliderValue,
              min: 40,
              max: 400,
              activeColor: AppTheme.primary,
              // divisions: 10,
              onChanged: _sliderEnabled
                  ? (value) {
                      _sliderValue = value;
                      setState(() {});
                    }
                  : null),

          Checkbox(
              value: _sliderEnabled,
              onChanged: (value) {
                _sliderEnabled = value ?? true;
                setState(() {});
              }),

          CheckboxListTile(
              activeColor: AppTheme.primary,
              title: const Text("Habilitar Slider"),
              value: _sliderEnabled,
              onChanged: (value) => setState(() {
                    _sliderEnabled = value ?? true;
                  })),

          SwitchListTile.adaptive(
            activeColor: AppTheme.primary,
            title: const Text("Habilitar Slider"),
            value: _sliderEnabled,
            onChanged: (value) => setState(() {
              _sliderEnabled = value ?? true;
            }),
          ),

          const AboutListTile(),
          
          Expanded(
            child: SingleChildScrollView(
              child: Image(
                image:
                    const NetworkImage('https://hbomax-images.warnermediacdn.com/2022-04/batman_0.png?host=wme-hbomax-drupal-prod.s3.amazonaws.com'),
                fit: BoxFit.contain,
                width: _sliderValue,
              ),
            ),
          ),

          // const SizedBox(height: 100,)
        ],
      ),
    );
  }
}
