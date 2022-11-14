import 'package:flutter/material.dart';
import 'package:quitanda/src/config/custom_colors.dart';

class OrderStatusWidget extends StatelessWidget {
  final String status;
  //está vencido o pagamento?
  final bool isOverDue;

  final Map<String, int> allStatus = <String, int>{
    'pending_payment': 0,
    'refunded': 1,
    'paid': 2,
    'preparing_purchase': 3,
    'shipping': 4,
    'delivered': 5
  };

  int get currentStatus => allStatus[status]!;

  OrderStatusWidget({
    Key? key,
    required this.status,
    required this.isOverDue,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const _statusDot(
          isAsctive: true,
          title: 'Pedido confirmado',
        ),
        //divider vertical
        const _CustomDivider(),
        if (currentStatus == 1) ...[
          const _statusDot(
              isAsctive: false,
              title: 'Pix estornado.',
              backgroundColor: Colors.orange)
        ] else if (isOverDue) ...[
          const _statusDot(
            isAsctive: false,
            title: 'Pagamento pix vencido',
          )
        ] else ...[
          _statusDot(
            isAsctive: currentStatus >= 2,
            title: 'Pagamento',
          ),
          const _CustomDivider(),
          _statusDot(
            isAsctive: currentStatus >= 3,
            title: 'Preparando',
          ),
          const _CustomDivider(),
          _statusDot(
            isAsctive: currentStatus >= 4,
            title: 'Envio',
          ),
          const _CustomDivider(),
          _statusDot(
            isAsctive: currentStatus >= 5,
            title: 'Entregue',
          ),
        ],
      ],
    );
  }
}

//divider vertical que separam os checks |
class _CustomDivider extends StatelessWidget {
  const _CustomDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: 8,
        vertical: 3,
      ),
      height: 10,
      width: 2,
      color: Colors.grey.shade300,
    );
  }
}

//divider para separar os check do status do pedido de forma vertical
class _statusDot extends StatelessWidget {
  final bool isAsctive;
  final String title;
  final Color? backgroundColor;
  const _statusDot({
    Key? key,
    required this.isAsctive,
    required this.title,
    this.backgroundColor,
  }) : super(key: key);

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
            color: isAsctive
                ? backgroundColor ?? CustomColors.customSwatchColor
                : Colors.transparent,
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
        const SizedBox(
          width: 5,
        ),
        //expanded estica tudo e respeita limites e nao deixa o texto (seu filho)
        //estourar o container
        Expanded(
          child: Text(
            title,
            style: const TextStyle(
              fontSize: 12,
            ),
          ),
        ),
      ],
    );
  }
}
