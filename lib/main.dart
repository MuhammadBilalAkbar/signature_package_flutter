import 'package:flutter/material.dart';
import 'package:signature_package_flutter/theme.dart';

import '../screens/home_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Signature Package Flutter',
        theme: theme,
        home: const HomeScreen(title: 'Signature Package Flutter'),
      );
}
