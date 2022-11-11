import 'package:flutter/material.dart';

class Detalhe extends StatefulWidget {
  const Detalhe({Key? key}) : super(key: key);

  @override
  State<Detalhe> createState() => _DetalheState();
}

class _DetalheState extends State<Detalhe> {
  int? id;

  @override
  void initState() {
    //initState nao tem o context inicializado, entao temos que usar o WidgetsBinding

    super.initState();
    //created do vue digamos
    //modalroute é o vuerouter
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      final param =
          ModalRoute.of(context)?.settings.arguments as Map<String, dynamic>?;
      setState(() {
        id = param?['id'];
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detalhes'),
      ),
      body: Center(child: Text('O id do produto é $id')),
    );
  }
}
