import 'package:flutter/material.dart';

import 'constants/constants.dart' show appName;
import 'theme/theme.dart';
import 'views/screens/home/home.dart';

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
