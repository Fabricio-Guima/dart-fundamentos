import 'package:flutter/material.dart';
import 'package:primeiros_passos/navegacao/page3.dart';

class Page2 extends StatelessWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Page 2'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      settings: RouteSettings(name: 'page3'),
                      builder: (context) => Page3()));
                },
                child: Text('Page3 via page')),
            ElevatedButton(onPressed: () {}, child: Text('Page3 via named'))
          ],
        ),
      ),
    );
  }
}
