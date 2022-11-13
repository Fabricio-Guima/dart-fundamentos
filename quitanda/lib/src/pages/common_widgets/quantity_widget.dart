import 'package:flutter/material.dart';
import 'package:quitanda/src/config/custom_colors.dart';

class QuantityWidget extends StatelessWidget {
  const QuantityWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(4),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(50),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade300,
            spreadRadius: 1,
            blurRadius: 2,
          ),
        ],
      ),
      child: Row(
        children: [
          //tipo o gestureDetector para colocar clicks nas coisas
          // material aqui serve para dar uma animação quando clicado
          _QuantityButton(
            icon: Icons.remove,
            color: Colors.grey,
            onPressed: () {},
          ),

          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 6),
            child: Text(
              '1kg',
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            ),
          ),

          _QuantityButton(
            icon: Icons.add,
            color: CustomColors.customSwatchColor,
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}

//componente botao
class _QuantityButton extends StatelessWidget {
  final Color color;
  final IconData icon;
  final VoidCallback onPressed;

  const _QuantityButton({
    Key? key,
    required this.color,
    required this.icon,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: InkWell(
        borderRadius: BorderRadius.circular(50),
        onTap: onPressed,
        //ink aqui serve com um Container
        child: Ink(
          height: 25,
          width: 25,
          decoration: BoxDecoration(
            color: color,
            shape: BoxShape.circle,
          ),
          child: Icon(
            icon,
            color: Colors.white,
            size: 16,
          ),
        ),
      ),
    );
  }
}
