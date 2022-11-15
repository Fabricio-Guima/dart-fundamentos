import 'package:flutter/material.dart';
import 'package:quitanda/src/config/custom_colors.dart';
import 'package:quitanda/src/models/item_model.dart';
import 'package:quitanda/src/pages/product/product_screen.dart';
import 'package:quitanda/src/services/utils_services.dart';

class ItemTile extends StatefulWidget {
  final ItemModel item;
  //animação
  final void Function(GlobalKey) cartAnimationMethod;

  const ItemTile({
    Key? key,
    required this.item,
    required this.cartAnimationMethod,
  }) : super(key: key);

  @override
  State<ItemTile> createState() => _ItemTileState();
}

class _ItemTileState extends State<ItemTile> {
  final GlobalKey imageGK = GlobalKey();

  final UtilsServices utilsServices = UtilsServices();

  IconData tileIcon = Icons.add_shopping_cart_outlined;
  Future<void> SwitchIcon() async {
    setState(() => tileIcon = Icons.check);
    await Future.delayed(const Duration(milliseconds: 1500));

    setState(() => tileIcon = Icons.add_shopping_cart_outlined);
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        //conteudo do card do produto
        GestureDetector(
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) {
                  return ProductScreen(item: widget.item);
                },
              ),
            );
          },
          child: Card(
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
                  Expanded(
                      //hero é a animação da image para ir para a outra tela de detalhes
                      child: Hero(
                    tag: widget.item.imgUrl,
                    //animacao
                    child: Image.asset(
                      widget.item.imgUrl,
                      key: imageGK,
                    ),
                  )),
                  //nome
                  Text(
                    widget.item.itemName,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  //preço - unidade
                  Row(
                    children: [
                      Text(
                        //formatando o preço para brl
                        utilsServices.priceToCurrency(widget.item.price),
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: CustomColors.customSwatchColor,
                        ),
                      ),
                      Text(
                        '/${widget.item.unit}',
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
          ),
        ),
        //botao de adicionar ao carrinho
        Positioned(
          top: 4,
          right: 4,
          //passando border radius nos filhos de ClipRRect
          child: ClipRRect(
            borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(15),
              topRight: Radius.circular(15),
            ),
            child: Material(
              //inkell aciona a tinta e a tinta é derramada do material
              child: InkWell(
                onTap: () {
                  //mudar icone temporariamente
                  SwitchIcon();
                  //animacao
                  widget.cartAnimationMethod(imageGK);
                },
                child: Ink(
                  height: 40,
                  width: 35,
                  decoration: BoxDecoration(
                    color: CustomColors.customSwatchColor,
                  ),
                  child: Icon(
                    tileIcon,
                    color: Colors.white,
                    size: 20,
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
