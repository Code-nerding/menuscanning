import 'dish.dart';
import 'user.dart';

class Review {
  final String id;
  final String userId;
  final User? user;
  final String dishId;
  final Dish? dish;
  final String? restaurantId;
  final int rating;
  final String? comment;
  final List<String> imageUrls;
  final bool isVerified;
  final DateTime createdAt;
  final DateTime updatedAt;

  Review({
    required this.id,
    required this.userId,
    this.user,
    required this.dishId,
    this.dish,
    this.restaurantId,
    required this.rating,
    this.comment,
    this.imageUrls = const [],
    this.isVerified = false,
    required this.createdAt,
    required this.updatedAt,
  });

  factory Review.fromJson(Map<String, dynamic> json) {
    return Review(
      id: json['id'],
      userId: json['user_id'],
      user: json['user'] != null ? User.fromJson(json['user']) : null,
      dishId: json['dish_id'],
      dish: json['dish'] != null ? Dish.fromJson(json['dish']) : null,
      restaurantId: json['restaurant_id'],
      rating: json['rating'],
      comment: json['comment'],
      imageUrls: List<String>.from(json['image_urls'] ?? []),
      isVerified: json['is_verified'] ?? false,
      createdAt: DateTime.parse(json['created_at']),
      updatedAt: DateTime.parse(json['updated_at']),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'user_id': userId,
      'user': user?.toJson(),
      'dish_id': dishId,
      'dish': dish?.toJson(),
      'restaurant_id': restaurantId,
      'rating': rating,
      'comment': comment,
      'image_urls': imageUrls,
      'is_verified': isVerified,
      'created_at': createdAt.toIso8601String(),
      'updated_at': updatedAt.toIso8601String(),
    };
  }
}