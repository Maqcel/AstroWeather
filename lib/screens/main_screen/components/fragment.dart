import 'package:astro_weather_2/constants.dart';
import 'package:flutter/material.dart';

class Fragment extends StatelessWidget {
  final Image image;
  const Fragment({required this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            width: Constants.imageSize,
            height: Constants.imageSize,
            child: image,
          )
        ],
      ),
    );
  }
}
