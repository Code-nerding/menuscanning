class Restaurant {
  final String id;
  final String name;
  final String qrCode;
  final String address;
  final String? phone;
  final String? email;
  final String? website;
  final String? logoUrl;
  final String? description;
  final List<String> cuisineTypes;
  final double? rating;
  final int? reviewCount;
  final DateTime createdAt;
  final DateTime updatedAt;

  Restaurant({
    required this.id,
    required this.name,
    required this.qrCode,
    required this.address,
    this.phone,
    this.email,
    this.website,
    this.logoUrl,
    this.description,
    this.cuisineTypes = const [],
    this.rating,
    this.reviewCount,
    required this.createdAt,
    required this.updatedAt,
  });

  factory Restaurant.fromJson(Map<String, dynamic> json) {
    return Restaurant(
      id: json['id'],
      name: json['name'],
      qrCode: json['qr_code'],
      address: json['address'],
      phone: json['phone'],
      email: json['email'],
      website: json['website'],
      logoUrl: json['logo_url'],
      description: json['description'],
      cuisineTypes: List<String>.from(json['cuisine_types'] ?? []),
      rating: json['rating']?.toDouble(),
      reviewCount: json['review_count'],
      createdAt: DateTime.parse(json['created_at']),
      updatedAt: DateTime.parse(json['updated_at']),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'qr_code': qrCode,
      'address': address,
      'phone': phone,
      'email': email,
      'website': website,
      'logo_url': logoUrl,
      'description': description,
      'cuisine_types': cuisineTypes,
      'rating': rating,
      'review_count': reviewCount,
      'created_at': createdAt.toIso8601String(),
      'updated_at': updatedAt.toIso8601String(),
    };
  }
}
