import 'dietart.dart';

class Dish {
  final String id;
  final String categoryId;
  final String name;
  final String description;
  final double price;
  final String? imageUrl;
  final String? videoUrl;
  final DietaryInfo dietaryInfo;
  final bool isAvailable;
  final bool isPopular;
  final double? rating;
  final int? reviewCount;
  final int order;
  final Map<String, String>? translations;

  Dish({
    required this.id,
    required this.categoryId,
    required this.name,
    required this.description,
    required this.price,
    this.imageUrl,
    this.videoUrl,
    required this.dietaryInfo,
    this.isAvailable = true,
    this.isPopular = false,
    this.rating,
    this.reviewCount,
    required this.order,
    this.translations,
  });

  factory Dish.fromJson(Map<String, dynamic> json) {
    return Dish(
      id: json['id'],
      categoryId: json['category_id'],
      name: json['name'],
      description: json['description'],
      price: json['price'].toDouble(),
      imageUrl: json['image_url'],
      videoUrl: json['video_url'],
      dietaryInfo: DietaryInfo.fromJson(json['dietary_info'] ?? {}),
      isAvailable: json['is_available'] ?? true,
      isPopular: json['is_popular'] ?? false,
      rating: json['rating']?.toDouble(),
      reviewCount: json['review_count'],
      order: json['order'] ?? 0,
      translations: json['translations'] != null 
          ? Map<String, String>.from(json['translations'])
          : null,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'category_id': categoryId,
      'name': name,
      'description': description,
      'price': price,
      'image_url': imageUrl,
      'video_url': videoUrl,
      'dietary_info': dietaryInfo.toJson(),
      'is_available': isAvailable,
      'is_popular': isPopular,
      'rating': rating,
      'review_count': reviewCount,
      'order': order,
      'translations': translations,
    };
  }
}