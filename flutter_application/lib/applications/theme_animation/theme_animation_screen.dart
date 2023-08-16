import 'package:flutter/material.dart';
import 'package:flutter_application/applications/theme_animation/moon.dart';
import 'package:flutter_application/applications/theme_animation/star.dart';
import 'package:flutter_application/applications/theme_animation/sun.dart';
import 'package:flutter_application/applications/theme_service.dart';
import 'package:provider/provider.dart';

class ThemeAnimationScreen extends StatelessWidget {
  const ThemeAnimationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Theme Animation'),
      ),
      body: Consumer<ThemeService>(
        builder: (context, ThemeService, child) {
          return Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Material(
                elevation: 20,
                borderRadius: BorderRadius.circular(15),
                child: Container(
                  height: 500,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    gradient: LinearGradient(
                      colors: ThemeService.isDarkMode
                          ? const [
                              // const Color.fromARGB(255, 223, 189, 229),
                              // Colors.deepPurple,
                              // Colors.pink
                              Color(0xFF94A9FF),
                              Color(0xFF6B66CC),
                              Color(0xFF200F75),
                            ]
                          : const [
                              Color(0xDDFFFA66),
                              Color(0xDDFFA057),
                              Color(0xDD940B99)
                            ],
                      begin: Alignment.bottomCenter,
                      end: Alignment.topCenter,
                    ),
                  ),
                  child: Stack(
                    children: [
                      Positioned(
                        top: 70,
                        right: 50,
                        child: AnimatedOpacity(
                            opacity: ThemeService.isDarkMode ? 1 : 0,
                            duration: Duration(microseconds: 300),
                            child: Star()),
                      ),
                      Positioned(
                        top: 150,
                        left: 60,
                        child: AnimatedOpacity(
                            opacity: ThemeService.isDarkMode ? 1 : 0,
                            duration: Duration(microseconds: 300),
                            child: Star()),
                      ),
                      Positioned(
                        top: 40,
                        left: 100,
                        child: AnimatedOpacity(
                            opacity: ThemeService.isDarkMode ? 1 : 0,
                            duration: Duration(microseconds: 300),
                            child: Star()),
                      ),
                      Positioned(
                        top: 50,
                        left: 50,
                        child: AnimatedOpacity(
                            opacity: ThemeService.isDarkMode ? 1 : 0,
                            duration: Duration(microseconds: 300),
                            child: Star()),
                      ),
                      Positioned(
                        top: 100,
                        right: 200,
                        child: AnimatedOpacity(
                            opacity: ThemeService.isDarkMode ? 1 : 0,
                            duration: Duration(microseconds: 300),
                            child: Star()),
                      ),
                      AnimatedPositioned(
                          top: ThemeService.isDarkMode ? 100 : 130,
                          right: ThemeService.isDarkMode ? 100 : -40,
                          duration: Duration(milliseconds: 600),
                          child: Moon()),
                      AnimatedPadding(
                        padding: EdgeInsets.only(
                            top: ThemeService.isDarkMode ? 110 : 50),
                        duration: Duration(milliseconds: 200),
                        child: Center(child: Sun()),
                      ),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Container(
                          height: 225,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              borderRadius: const BorderRadius.only(
                                bottomLeft: Radius.circular(15),
                                bottomRight: Radius.circular(15),
                              ),
                              color: ThemeService.isDarkMode
                                  ? Colors.grey[800]
                                  : Colors.white),
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  ThemeService.isDarkMode
                                      ? "To Dark"
                                      : "To Bright",
                                  textAlign: TextAlign.center,
                                  style: const TextStyle(
                                    fontSize: 21,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                const SizedBox(
                                  height: 30,
                                ),
                                Text(
                                  ThemeService.isDarkMode
                                      ? "Let the Sun Rise"
                                      : "Let it be Night",
                                  textAlign: TextAlign.center,
                                  style: const TextStyle(
                                    fontSize: 18,
                                    fontStyle: FontStyle.italic,
                                  ),
                                ),
                                const SizedBox(
                                  height: 30,
                                ),
                                Switch(
                                    value: ThemeService.isDarkMode,
                                    onChanged: (value) {
                                      ThemeService.toggleTheme();
                                    })
                              ]),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
