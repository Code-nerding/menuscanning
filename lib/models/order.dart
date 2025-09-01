import '../enum/orderstat.dart';
import '../enum/paymeth.dart';
import '../enum/paystat.dart';
import 'orderitem.dart';
import 'restaurant.dart';

class Order {
  final String id;
  final String userId;
  final String restaurantId;
  final Restaurant? restaurant;
  final List<OrderItem> items;
  final double subtotalAmount;
  final double taxAmount;
  final double tipAmount;
  final double totalAmount;
  final OrderStatus status;
  final PaymentMethod? paymentMethod;
  final PaymentStatus paymentStatus;
  final String? tableNumber;
  final String? specialInstructions;
  final DateTime createdAt;
  final DateTime? estimatedCompletionTime;
  final DateTime? completedAt;

  Order({
    required this.id,
    required this.userId,
    required this.restaurantId,
    this.restaurant,
    this.items = const [],
    required this.subtotalAmount,
    required this.taxAmount,
    required this.tipAmount,
    required this.totalAmount,
    required this.status,
    this.paymentMethod,
    required this.paymentStatus,
    this.tableNumber,
    this.specialInstructions,
    required this.createdAt,
    this.estimatedCompletionTime,
    this.completedAt,
  });

  factory Order.fromJson(Map<String, dynamic> json) {
    return Order(
      id: json['id'],
      userId: json['user_id'],
      restaurantId: json['restaurant_id'],
      restaurant: json['restaurant'] != null 
          ? Restaurant.fromJson(json['restaurant'])
          : null,
      items: (json['items'] as List<dynamic>?)
          ?.map((i) => OrderItem.fromJson(i))
          .toList() ?? [],
      subtotalAmount: json['subtotal_amount'].toDouble(),
      taxAmount: json['tax_amount'].toDouble(),
      tipAmount: json['tip_amount'].toDouble(),
      totalAmount: json['total_amount'].toDouble(),
      status: OrderStatus.values.firstWhere(
          (e) => e.toString().split('.').last == json['status']),
      paymentMethod: json['payment_method'] != null
          ? PaymentMethod.values.firstWhere(
              (e) => e.toString().split('.').last == json['payment_method'])
          : null,
      paymentStatus: PaymentStatus.values.firstWhere(
          (e) => e.toString().split('.').last == json['payment_status']),
      tableNumber: json['table_number'],
      specialInstructions: json['special_instructions'],
      createdAt: DateTime.parse(json['created_at']),
      estimatedCompletionTime: json['estimated_completion_time'] != null
          ? DateTime.parse(json['estimated_completion_time'])
          : null,
      completedAt: json['completed_at'] != null
          ? DateTime.parse(json['completed_at'])
          : null,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'user_id': userId,
      'restaurant_id': restaurantId,
      'restaurant': restaurant?.toJson(),
      'items': items.map((i) => i.toJson()).toList(),
      'subtotal_amount': subtotalAmount,
      'tax_amount': taxAmount,
      'tip_amount': tipAmount,
      'total_amount': totalAmount,
      'status': status.toString().split('.').last,
      'payment_method': paymentMethod?.toString().split('.').last,
      'payment_status': paymentStatus.toString().split('.').last,
      'table_number': tableNumber,
      'special_instructions': specialInstructions,
      'created_at': createdAt.toIso8601String(),
      'estimated_completion_time': estimatedCompletionTime?.toIso8601String(),
      'completed_at': completedAt?.toIso8601String(),
    };
  }
}
 