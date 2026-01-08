import 'package:flutter/material.dart';
import 'package:flutter_application_1/data/notifiers.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: isDarkModeNotifier,
      builder: (context, isDarkMode, child) {
        return InkWell(
          splashColor:isDarkMode ? Color.fromARGB(255, 64, 64, 64) : Color.fromARGB(70, 87, 87, 87),
          radius: 400.0,
          
          onTap: () {
            print('clicked');
          },
          child: SizedBox(
            height: double.infinity,
            width: double.infinity,
            child: Center(child: Text('Home page'),
            ),
          ),
        );
      }
    );
  }
}
