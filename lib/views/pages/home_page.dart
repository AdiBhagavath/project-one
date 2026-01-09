import 'package:flutter/material.dart';
import 'package:flutter_application_1/data/notifiers.dart';
import 'package:flutter_application_1/widgets/hero_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: isDarkModeNotifier,
      builder: (context, isDarkMode, child) {
        return InkWell(
          splashColor: isDarkMode
              ? Color.fromARGB(255, 64, 64, 64)
              : Color.fromARGB(70, 87, 87, 87),
          splashFactory: InkRipple.splashFactory,

          onTap: () {},
          child: Center(
            child: SingleChildScrollView(
              child: Stack(
                children: [
                  Container(
                    alignment: AlignmentDirectional.bottomCenter,
                    child: const HeroWidget(),
                  ),
                  Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.symmetric(vertical: 30.0),
                    width: double.infinity,
                    child: Opacity(
                      opacity: 0.7,
                      child: Card(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 150.0,
                            vertical: 15.0,
                          ),
                          child: Text(
                            'Home page',
                            style: TextStyle(
                              color: isDarkMode
                                  ? const Color.fromARGB(255, 24, 169, 154)
                                  : const Color.fromARGB(255, 10, 73, 67),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
