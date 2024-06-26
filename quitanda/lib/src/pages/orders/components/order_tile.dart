import 'package:flutter/material.dart';
import 'package:quitanda/src/models/cart_item_model.dart';
import 'package:quitanda/src/models/order_model.dart';
import 'package:quitanda/src/pages/orders/components/order_status_widget.dart';
import 'package:quitanda/src/pages/orders/components/payment_dialog.dart';
import 'package:quitanda/src/services/utils_services.dart';

class OrderTile extends StatelessWidget {
  final OrderModel order;
  OrderTile({
    Key? key,
    required this.order,
  }) : super(key: key);

  final UtilsServices utilsServices = UtilsServices();

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      //collapsa o card (aberto/fechado)
      child: Theme(
        //copiando o main tema e passando uma nova estilização
        data: Theme.of(context).copyWith(
          dividerColor: Colors.transparent,
        ),
        child: ExpansionTile(
          //a modal começa em aberto se o pagamento nao foi concluido
          initiallyExpanded: order.status == 'pending_payment',
          title: Column(
            mainAxisSize: MainAxisSize.min,
            //alinhar os textos a esquerda
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Pedido: ${order.id}'),
              Text(
                utilsServices.formatDateTime(order.createdDateTime),
                style: const TextStyle(
                  fontSize: 12,
                  color: Colors.black,
                ),
              ),
            ],
          ),
          //serve para todos os filhos
          childrenPadding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
          //alinha o texto a esquerda e demais elementos
          expandedCrossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            IntrinsicHeight(
              child: Row(
                children: [
                  //Lista de produtos do pedido
                  Expanded(
                    flex: 3,
                    child: SizedBox(
                      height: 150,
                      child: ListView(
                        //iterar em todos os items do pedido
                        children: order.items.map((orderItem) {
                          return OrderItemWidget(
                            utilsServices: utilsServices,
                            orderItem: orderItem,
                          );
                        }).toList(),
                      ),
                    ),
                  ),
                  //Divisão
                  VerticalDivider(
                    color: Colors.grey.shade300,
                    thickness: 2,
                    width: 8,
                  ),
                  //lista de status do pedido
                  Expanded(
                    flex: 2,
                    child: OrderStatusWidget(
                      status: order.status,
                      isOverDue: order.overDueDateTime.isBefore(
                        DateTime.now(),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            //total do pagamento
            Text.rich(
              TextSpan(
                style: const TextStyle(
                  fontSize: 20,
                ),
                children: [
                  const TextSpan(
                    text: 'Total ',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextSpan(
                    text: utilsServices.priceToCurrency(order.total),
                  ),
                ],
              ),
            ),
            //Botao de pagamento via pix
            Visibility(
              visible: order.status == 'pending_payment',
              child: ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                onPressed: () {
                  //modal com QR Code
                  showDialog(
                    context: context,
                    builder: (_) {
                      return PaymentDialog(order: order);
                    },
                  );
                },
                icon: Image.asset(
                  'assets/app_images/pix.png',
                  height: 18,
                ),
                label: const Text('Ver R Code Pix'),
              ),
              //se visible for false
            ),
          ],
        ),
      ),
    );
  }
}

class OrderItemWidget extends StatelessWidget {
  const OrderItemWidget({
    Key? key,
    required this.utilsServices,
    required this.orderItem,
  }) : super(key: key);

  final UtilsServices utilsServices;
  final CartItemModel orderItem;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Row(
        children: [
          Text(
            '${orderItem.quantity} ${orderItem.item.unit} ',
            style: const TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          //forçando a "div" aumentar o máximo de tamanho possível e empurrando os outros para a direita ou esquerda
          Expanded(
            child: Text(
              orderItem.item.itemName,
            ),
          ),
          Text(
            utilsServices.priceToCurrency(
              orderItem.totalPrice(),
            ),
          ),
        ],
      ),
    );
  }
}
