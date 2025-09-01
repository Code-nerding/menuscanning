class LoyaltyTransaction {
  final String id;
  final String userId;
  final String orderId;
  final int pointsEarned;
  final int pointsRedeemed;
  final String description;
  final DateTime createdAt;

  LoyaltyTransaction({
    required this.id,
    required this.userId,
    required this.orderId,
    this.pointsEarned = 0,
    this.pointsRedeemed = 0,
    required this.description,
    required this.createdAt,
  });

  factory LoyaltyTransaction.fromJson(Map<String, dynamic> json) {
    return LoyaltyTransaction(
      id: json['id'],
      userId: json['user_id'],
      orderId: json['order_id'],
      pointsEarned: json['points_earned'] ?? 0,
      pointsRedeemed: json['points_redeemed'] ?? 0,
      description: json['description'],
      createdAt: DateTime.parse(json['created_at']),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'user_id': userId,
      'order_id': orderId,
      'points_earned': pointsEarned,
      'points_redeemed': pointsRedeemed,
      'description': description,
      'created_at': createdAt.toIso8601String(),
    };
  }
}
