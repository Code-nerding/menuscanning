import 'cat.dart';

class Menu {
  final String id;
  final String restaurantId;
  final String name;
  final String? description;
  final List<Category> categories;
  final bool isActive;
  final DateTime lastUpdated;

  Menu({
    required this.id,
    required this.restaurantId,
    required this.name,
    this.description,
    this.categories = const [],
    required this.isActive,
    required this.lastUpdated,
  });

  factory Menu.fromJson(Map<String, dynamic> json) {
    return Menu(
      id: json['id'],
      restaurantId: json['restaurant_id'],
      name: json['name'],
      description: json['description'],
      categories: (json['categories'] as List<dynamic>?)
          ?.map((c) => Category.fromJson(c))
          .toList() ?? [],
      isActive: json['is_active'] ?? true,
      lastUpdated: DateTime.parse(json['last_updated']),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'restaurant_id': restaurantId,
      'name': name,
      'description': description,
      'categories': categories.map((c) => c.toJson()).toList(),
      'is_active': isActive,
      'last_updated': lastUpdated.toIso8601String(),
    };
  }
}