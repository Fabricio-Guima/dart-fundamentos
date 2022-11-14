import 'package:flutter/material.dart';
import 'package:quitanda/src/pages/cart/cart_tab.dart';
import 'package:quitanda/src/pages/home/home_tab.dart';
import 'package:quitanda/src/pages/orders/order_tab.dart';
import 'package:quitanda/src/pages/profile/profile_tab.dart';

class BaseScreen extends StatefulWidget {
  const BaseScreen({Key? key}) : super(key: key);

  @override
  State<BaseScreen> createState() => _BaseScreenState();
}

class _BaseScreenState extends State<BaseScreen> {
  int currentIndex = 0;

  //constructor para o pageView mudar de página
  final pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text('Base'),
      // ),
      body: PageView(
        // usuario nao pode arrastar da direita para esquerda para mudar de page
        physics: const NeverScrollableScrollPhysics(),
        //aqui o page irá mudar de acordo com o botao clicado no BottomNavigationBar
        controller: pageController,
        children: [
          const HomeTab(),
          const CartTab(),
          const OrderTab(),
          const ProfileTab(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        //cada icone tem um id e ao clicar quero que ele abra uma page x
        currentIndex: currentIndex,
        onTap: (index) {
          setState(() {
            //seleciona o botao ativo
            currentIndex = index;
            //aqui de fato tu muda a página
            pageController.jumpToPage(index);
          });
        },
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
