import 'package:flutter/material.dart';

class BaseScreen extends StatelessWidget {
  const BaseScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Base'),
      ),
      body: Container(color: Colors.red),
      bottomNavigationBar: BottomNavigationBar(
        //acima de 3 botoes de menu, tem que usar isso para os menus ficarem visíveis
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.green,
        //cor ícone selecionado
        selectedItemColor: Colors.white,
        //cor ícones não selecionados
        unselectedItemColor: Colors.white.withAlpha(100),
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart_checkout_outlined),
            label: 'Carrinho',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.list),
            label: 'Pedidos',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            label: 'Perfil',
          ),
        ],
      ),
    );
  }
}
