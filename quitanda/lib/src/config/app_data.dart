import 'package:quitanda/src/models/cart_item_model.dart';
import 'package:quitanda/src/models/item_model.dart';
import 'package:quitanda/src/models/order_model.dart';
import 'package:quitanda/src/models/user_model.dart';

ItemModel apple = ItemModel(
  description:
      'A melhor maçã da região e que conta com o melhor preço de qualquer quitanda. Este item conta com vitaminas essenciais para o fortalecimento corporal, resultando em uma vida saudável.',
  imgUrl: 'assets/fruits/apple.png',
  itemName: 'Maçã',
  price: 5.5,
  unit: 'kg',
);

ItemModel grape = ItemModel(
  imgUrl: 'assets/fruits/grape.png',
  itemName: 'Uva',
  price: 7.4,
  unit: 'kg',
  description:
      'A melhor uva da região e que conta com o melhor preço de qualquer quitanda. Este item conta com vitaminas essenciais para o fortalecimento corporal, resultando em uma vida saudável.',
);

ItemModel guava = ItemModel(
  imgUrl: 'assets/fruits/guava.png',
  itemName: 'Goiaba',
  price: 11.5,
  unit: 'kg',
  description:
      'A melhor goiaba da região e que conta com o melhor preço de qualquer quitanda. Este item conta com vitaminas essenciais para o fortalecimento corporal, resultando em uma vida saudável.',
);

ItemModel kiwi = ItemModel(
  imgUrl: 'assets/fruits/kiwi.png',
  itemName: 'Kiwi',
  price: 2.5,
  unit: 'un',
  description:
      'O melhor kiwi da região e que conta com o melhor preço de qualquer quitanda. Este item conta com vitaminas essenciais para o fortalecimento corporal, resultando em uma vida saudável.',
);

ItemModel mango = ItemModel(
  imgUrl: 'assets/fruits/mango.png',
  itemName: 'Manga',
  price: 2.5,
  unit: 'un',
  description:
      'A melhor manga da região e que conta com o melhor preço de qualquer quitanda. Este item conta com vitaminas essenciais para o fortalecimento corporal, resultando em uma vida saudável.',
);

ItemModel papaya = ItemModel(
  imgUrl: 'assets/fruits/papaya.png',
  itemName: 'Mamão papaya',
  price: 8,
  unit: 'kg',
  description:
      'O melhor mamão da região e que conta com o melhor preço de qualquer quitanda. Este item conta com vitaminas essenciais para o fortalecimento corporal, resultando em uma vida saudável.',
);

// Lista de produtos
List<ItemModel> items = [
  apple,
  grape,
  guava,
  kiwi,
  mango,
  papaya,
];

List<String> categories = [
  'Frutas',
  'Grãos',
  'Verduras',
  'Temperos',
  'Cereais'
];

//lista de produtos do carrinho
List<CartItemModel> cartItems = [
  CartItemModel(item: apple, quantity: 2),
  CartItemModel(item: mango, quantity: 1),
  CartItemModel(item: guava, quantity: 2),
];

//dados do usuário

UserModel user = UserModel(
  phone: '99 9 9999-9999',
  cpf: '555 555 555 55',
  email: 'fsgkof@gmail.com',
  name: 'Fabrício',
  password: '',
);

//Lista de pedidos
List<OrderModel> orders = [
  OrderModel(
    id: 'dfasfs4545trt56565',
    createdDateTime: DateTime.parse(
      '2022-06-08 10:00:10',
    ),
    items: [
      CartItemModel(item: apple, quantity: 2),
      CartItemModel(item: mango, quantity: 2),
    ],
    overDueDateTime: DateTime.parse(
      '2022-12-31 10:00:10',
    ),
    status: 'pending_payment',
    copyAndPaste: 'Q23ewr234rt',
    total: 20.0,
  ),
  OrderModel(
    id: 'dfasfs4545trt56564',
    createdDateTime: DateTime.parse(
      '2022-06-08 10:00:10',
    ),
    items: [
      CartItemModel(item: apple, quantity: 1),
    ],
    overDueDateTime: DateTime.parse(
      '2022-12-31 10:00:10',
    ),
    status: 'paid',
    copyAndPaste: 'Q23ewr234rt',
    total: 20.0,
  )
];
