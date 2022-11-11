import 'package:flutter/material.dart';
import 'package:primeiros_passos/images/images_page.dart';
import 'package:primeiros_passos/navegacao/home_page.dart' as navegacao;
import 'package:primeiros_passos/navegacao_params/detalhe.dart';
import 'package:primeiros_passos/navegacao_params/lista.dart';

import 'navegacao/page1.dart';
import 'navegacao/page2.dart';
import 'navegacao/page3.dart';
import 'navegacao/page4.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo kkk',
        // home: HomePage(),

        initialRoute: '/navegacao_param',
        //declarar rotas
        routes: {
          '/': (_) => navegacao.HomePage(),
          '/page1': (_) => Page1(),
          '/page2': (_) => Page2(),
          '/page3': (_) => Page3(),
          '/page4': (_) => Page4(),
          '/navegacao_param': (_) => Lista(),
          '/detalhe': (_) => Detalhe(),
        });
  }
}
