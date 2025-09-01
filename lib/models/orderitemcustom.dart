class OrderItemCustomization {
  final String id;
  final String name;
  final String value;
  final double additionalPrice;

  OrderItemCustomization({
    required this.id,
    required this.name,
    required this.value,
    this.additionalPrice = 0.0,
  });

  factory OrderItemCustomization.fromJson(Map<String, dynamic> json) {
    return OrderItemCustomization(
      id: json['id'],
      name: json['name'],
      value: json['value'],
      additionalPrice: json['additional_price']?.toDouble() ?? 0.0,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'value': value,
      'additional_price': additionalPrice,
    };
  }
}