import 'package:flutter/material.dart';

import 'themes/default_dark.dart';
import './views/screens/home.dart';

void main() => runApp(ServerCalc());

class ServerCalc extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme,
      home: Home(),
    );
  }
}
