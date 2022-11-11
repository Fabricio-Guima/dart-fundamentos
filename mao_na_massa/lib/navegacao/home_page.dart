import 'package:flutter/material.dart';
import 'package:primeiros_passos/navegacao/page2.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushNamed('/page2');
                },
                child: Text('Page2 via page')),
            ElevatedButton(onPressed: () {}, child: Text('Page2 via named'))
          ],
        ),
      ),
    );
  }
}
