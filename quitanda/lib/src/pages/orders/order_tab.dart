import 'package:flutter/material.dart';
import 'package:quitanda/src/config/app_data.dart' as appData;
import 'package:quitanda/src/pages/orders/components/order_tile.dart';

class OrderTab extends StatelessWidget {
  const OrderTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pedidos'),
      ),
      body: ListView.separated(
        padding: const EdgeInsets.all(16),
        physics: const BouncingScrollPhysics(),
        //itens a serem listados
        itemBuilder: (_, index) {
          return OrderTile(
            order: appData.orders[index],
          );
        },
        //cards - itens
        separatorBuilder: (_, index) => const SizedBox(height: 10),
        //total de itens do grid
        itemCount: appData.orders.length,
      ),
    );
  }
}
