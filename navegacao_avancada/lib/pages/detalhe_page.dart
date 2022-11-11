import 'package:flutter/material.dart';

class DetalhePage extends StatelessWidget {
  const DetalhePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //receber o parametro da rota anterior
    var parametro = ModalRoute.of(context)?.settings.arguments as String?;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detalhes'),
      ),
      body: Center(
        child: Text(parametro ?? 'Não foi enviado o parâmetro'),
      ),
    );
  }
}
