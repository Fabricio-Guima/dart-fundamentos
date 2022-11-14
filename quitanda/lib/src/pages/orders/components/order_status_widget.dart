import 'package:flutter/material.dart';
import 'package:quitanda/src/config/custom_colors.dart';

class OrderStatusWidget extends StatelessWidget {
  final String status;
  //está vencido o pagamento?
  final bool isOverDue;
  //status do pedido

  const OrderStatusWidget({
    Key? key,
    required this.status,
    required this.isOverDue,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        _statusDot(
          isAsctive: true,
          title: 'Teste pagamento',
        ),
        _statusDot(
          isAsctive: false,
          title: 'Teste pagamento',
        ),
      ],
    );
  }
}

class _statusDot extends StatelessWidget {
  final bool isAsctive;
  final title;
  const _statusDot({Key? key, required this.isAsctive, required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        //bolinha de checkado
        Container(
          //alinhando ícone de check ao centro
          alignment: Alignment.center,
          height: 20,
          width: 20,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(
              color: CustomColors.customSwatchColor,
            ),
            color:
                isAsctive ? CustomColors.customSwatchColor : Colors.transparent,
          ),
          // const SizedBox.shrink() preenche o espaço que der
          child: isAsctive
              ? const Icon(
                  Icons.check,
                  size: 13,
                  color: Colors.white,
                )
              : const SizedBox.shrink(),
        ),
        //divider para separar o check do status do pedido
        const SizedBox(width: 5),
        //expanded estica tudo e respeita limites e nao deixa o texto (seu filho)
        //estourar o container
        Expanded(
          child: Text(title),
        ),
      ],
    );
  }
}
