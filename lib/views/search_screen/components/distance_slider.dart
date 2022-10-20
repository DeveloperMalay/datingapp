import 'package:datingapp/utils/custom_theme.dart';
import 'package:flutter/material.dart';

class CustomSlider extends StatefulWidget {
  const CustomSlider({super.key});

  @override
  State<CustomSlider> createState() => _CustomSliderState();
}

class _CustomSliderState extends State<CustomSlider> {
  double feedbackrate = 0.0;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Slider(
        min: 0.0,
        max: 100.0,
        value: feedbackrate,
        activeColor: CustomTheme.violet,
        thumbColor: CustomTheme.violet,
        inactiveColor: Colors.white,
        onChanged: (value) {
          setState(() {
            feedbackrate = value;
            print(feedbackrate);
          });
        },
      ),
    );
  }
}
