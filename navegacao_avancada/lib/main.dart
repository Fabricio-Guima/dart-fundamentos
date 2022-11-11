import 'package:flutter/material.dart';
import 'package:navegacao_avancada/pages/detalhe_page.dart';
import 'package:navegacao_avancada/pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo kkk',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      onGenerateRoute: (RouteSettings settings) {
        if (settings.name == '/') {
          return MaterialPageRoute(
            settings: settings,
            builder: (context) => HomePage(),
          );
        }

        if (settings.name == '/detalhe') {
          return MaterialPageRoute(
            settings: settings,
            builder: (context) => DetalhePage(),
          );
        }
      },

      // routes: {'/': (_) => HomePage(), '/detalhe': (_) => DetalhePage()},
    );
  }
}
