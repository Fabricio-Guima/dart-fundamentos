import 'package:flutter/material.dart';
import 'package:quitanda/src/config/custom_colors.dart';
import 'package:quitanda/src/models/item_model.dart';

class ItemTile extends StatelessWidget {
  final ItemModel item;

  const ItemTile({
    Key? key,
    required this.item,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 1,
      shadowColor: Colors.grey.shade300,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            //imagem
            //expanded aqui força a imagem crescer até onde der
            Expanded(child: Image.asset(item.imgUrl)),
            //nome
            Text(
              item.itemName,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            //preço - unidade
            Row(
              children: [
                Text(
                  item.price.toString(),
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: CustomColors.customSwatchColor,
                  ),
                ),
                Text(
                  '/${item.unit}',
                  style: TextStyle(
                    color: Colors.grey.shade500,
                    fontWeight: FontWeight.bold,
                    fontSize: 12,
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
