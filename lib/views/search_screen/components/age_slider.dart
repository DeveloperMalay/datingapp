import 'package:datingapp/utils/custom_theme.dart';
import 'package:flutter/material.dart';

class AgeSlider extends StatefulWidget {
  const AgeSlider({super.key});

  @override
  State<AgeSlider> createState() => _AgeSliderState();
}

class _AgeSliderState extends State<AgeSlider> {
  double age = 0.0;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Slider(
        min: 0.0,
        max: 40.0,
        value: age,
        activeColor: CustomTheme.violet,
        thumbColor: CustomTheme.violet,
        inactiveColor: Colors.white,
        onChanged: (value) {
          setState(() {
            age = value;
            print(age);
          });
        },
      ),
    );
  }
}
