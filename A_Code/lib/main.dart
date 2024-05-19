import 'package:aproject/app.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const App());
}

// class App extends StatelessWidget {
//   const App({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       //flutter detects system theme and changes to dark or light mode accordingly. You can also directly pass light or dark mode from here.
//       themeMode: ThemeMode.system,
//       theme: AAppTheme.lightTheme, //light theme i defined in utils folder
//       darkTheme: AAppTheme.darkTheme, //dark theme
//     );
//   }
// }
