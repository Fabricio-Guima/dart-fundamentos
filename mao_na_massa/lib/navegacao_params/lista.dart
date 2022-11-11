import 'package:flutter/material.dart';
import 'package:primeiros_passos/navegacao_params/detalhe.dart';

class Lista extends StatelessWidget {
  const Lista({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('lista'),
      ),
      body: Center(
          child: Column(
        children: [
          TextButton(
              onPressed: () {
                // Navigator.of(context).push(
                //   MaterialPageRoute(
                //     settings:
                //         RouteSettings(name: 'detalhe', arguments: {'id': 20}),
                //     builder: (context) => Detalhe(),
                //   ),
                // );
                Navigator.of(context)
                    .pushNamed('/detalhe', arguments: {'id': 20});
              },
              child: Text('detalhes'))
        ],
      )),
    );
  }
}
