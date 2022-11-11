import 'package:flutter/material.dart';
import 'package:navegacao_avancada/pages/detalhe_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: Center(
        child: Column(
          children: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pushNamed('/detalhe', arguments: 'x');
              },
              child: const Text('Ir para detalhe'),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                  settings: RouteSettings(
                      name: '/detalhe', arguments: 'teste page route'),
                  builder: (_) => DetalhePage(),
                ));
              },
              child: const Text('Ir para detalhe PageRoute'),
            ),
          ],
        ),
      ),
    );
  }
}
