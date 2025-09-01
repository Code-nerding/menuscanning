import 'dish.dart';
import 'orderitemcustom.dart';

class OrderItem {
  final String id;
  final String dishId;
  final Dish dish;
  final int quantity;
  final double unitPrice;
  final double totalPrice;
  final String? specialInstructions;
  final List<OrderItemCustomization> customizations;

  OrderItem({
    required this.id,
    required this.dishId,
    required this.dish,
    required this.quantity,
    required this.unitPrice,
    required this.totalPrice,
    this.specialInstructions,
    this.customizations = const [],
  });

  factory OrderItem.fromJson(Map<String, dynamic> json) {
    return OrderItem(
      id: json['id'],
      dishId: json['dish_id'],
      dish: Dish.fromJson(json['dish']),
      quantity: json['quantity'],
      unitPrice: json['unit_price'].toDouble(),
      totalPrice: json['total_price'].toDouble(),
      specialInstructions: json['special_instructions'],
      customizations: (json['customizations'] as List<dynamic>?)
          ?.map((c) => OrderItemCustomization.fromJson(c))
          .toList() ?? [],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'dish_id': dishId,
      'dish': dish.toJson(),
      'quantity': quantity,
      'unit_price': unitPrice,
      'total_price': totalPrice,
      'special_instructions': specialInstructions,
      'customizations': customizations.map((c) => c.toJson()).toList(),
    };
  }
}