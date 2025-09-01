import 'dish.dart';

class Category {
  final String id;
  final String menuId;
  final String name;
  final String? description;
  final String? imageUrl;
  final int order;
  final List<Dish> dishes;
  final bool isActive;

  Category({
    required this.id,
    required this.menuId,
    required this.name,
    this.description,
    this.imageUrl,
    required this.order,
    this.dishes = const [],
    required this.isActive,
  });

  factory Category.fromJson(Map<String, dynamic> json) {
    return Category(
      id: json['id'],
      menuId: json['menu_id'],
      name: json['name'],
      description: json['description'],
      imageUrl: json['image_url'],
      order: json['order'] ?? 0,
      dishes: (json['dishes'] as List<dynamic>?)
          ?.map((d) => Dish.fromJson(d))
          .toList() ?? [],
      isActive: json['is_active'] ?? true,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'menu_id': menuId,
      'name': name,
      'description': description,
      'image_url': imageUrl,
      'order': order,
      'dishes': dishes.map((d) => d.toJson()).toList(),
      'is_active': isActive,
    };
  }
}