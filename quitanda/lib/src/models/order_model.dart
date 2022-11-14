// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:quitanda/src/models/cart_item_model.dart';
import 'package:quitanda/src/models/item_model.dart';

class OrderModel {
  String id;
  DateTime createdDateTime;
  List<CartItemModel> items;
  //duração de tempo do pix para fazer o pagamento
  DateTime overDueDateTime;
  String status;
  String copyAndPaste;
  double total;

  OrderModel({
    required this.id,
    required this.createdDateTime,
    required this.items,
    required this.overDueDateTime,
    required this.status,
    required this.copyAndPaste,
    required this.total,
  });
}
