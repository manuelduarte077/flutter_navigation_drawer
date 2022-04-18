import 'package:flutter/material.dart';
import 'package:navigation_drawer_challenge/constants/constants.dart'
    show appName;
import 'package:navigation_drawer_challenge/theme/theme.dart';
import 'package:navigation_drawer_challenge/views/screens/screens.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const Home(),
      title: appName,
      theme: channelTheme,
    );
  }
}
