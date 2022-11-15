import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:quitanda/src/models/order_model.dart';
import 'package:quitanda/src/services/utils_services.dart';

class PaymentDialog extends StatelessWidget {
  final OrderModel order;
  PaymentDialog({Key? key, required this.order}) : super(key: key);

  final UtilsServices utilsServices = UtilsServices();

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      child: Container(
        //stack serve para vc posicionar qualquer componente
        //no lugar que vc queira (position relative e absolute do css),
        //mas tem que usar Positioned em conjunto
        child: Stack(
          //nao empurra os outros conteúdos para a esquerda, pois botao fechar foi para a direita
          alignment: Alignment.center,
          children: [
            //Conteúdo
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                //reduz a modal ao mínimo possível
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 10),
                    child: Text(
                      'Pagamento com Pix',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                  ),

                  //QR Code
                  QrImage(
                    data: "1234567dddsdf890",
                    version: QrVersions.auto,
                    size: 200.0,
                  ),
                  //Vencimento
                  Text(
                    'Vencimento: ${utilsServices.formatDateTime(order.overDueDateTime)}',
                    style: const TextStyle(
                      fontSize: 12,
                    ),
                  ),
                  //Total
                  Text(
                    'Total: ${utilsServices.priceToCurrency(order.total)}',
                    style: const TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  //Botão copiar o QR Code
                  OutlinedButton.icon(
                    style: OutlinedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      side: const BorderSide(
                        width: 2,
                        color: Colors.green,
                      ),
                    ),
                    onPressed: () {},
                    icon: const Icon(
                      Icons.copy,
                      size: 15,
                    ),
                    label: const Text(
                      'copiar código Pix',
                      style: TextStyle(
                        fontSize: 13,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            //Botão de fechar
            Positioned(
                top: 0,
                right: 0,
                child: IconButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  icon: const Icon(
                    Icons.close,
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
