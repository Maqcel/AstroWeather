import 'package:astro_weather_2/constants.dart';
import 'package:astro_weather_2/screens/main_screen/components/additional_info.dart';
import 'package:astro_weather_2/screens/main_screen/components/clock_widget.dart';
import 'package:astro_weather_2/screens/main_screen/components/fragment.dart';
import 'package:astro_weather_2/screens/main_screen/components/general_info.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(Constants.appName),
            ClockWidget(),
          ],
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(Constants.defaultPadding),
            child: Text('Place name'),
          ),
          Expanded(
            flex: 1,
            child: LayoutBuilder(
              builder: (context, constrains) {
                if (constrains.maxWidth <= Constants.mobileWidth) {
                  final PageController controller =
                      PageController(initialPage: 0);
                  return PageView(
                    controller: controller,
                    scrollDirection: Axis.horizontal,
                    children: [
                      Fragment(
                        child: GeneralInfo(),
                      ),
                      Fragment(
                        child: AdditionalInfo(),
                      ),
                    ],
                  );
                }
                return Row(
                  children: [
                    Expanded(
                      child: Fragment(
                        child: GeneralInfo(),
                      ),
                    ),
                    Expanded(
                      child: Fragment(
                        child: AdditionalInfo(),
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
