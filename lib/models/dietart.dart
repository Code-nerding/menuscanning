import '../enum/allegenty.dart';
import '../enum/dietaryty.dart';

class DietaryInfo {
  final List<DietaryType> dietaryTypes;
  final List<AllergenType> allergens;
  final int? calories;
  final String? nutritionInfo;

  DietaryInfo({
    this.dietaryTypes = const [],
    this.allergens = const [],
    this.calories,
    this.nutritionInfo,
  });

  factory DietaryInfo.fromJson(Map<String, dynamic> json) {
    return DietaryInfo(
      dietaryTypes: (json['dietary_types'] as List<dynamic>?)
          ?.map((type) => DietaryType.values.firstWhere(
              (e) => e.toString().split('.').last == type))
          .toList() ?? [],
      allergens: (json['allergens'] as List<dynamic>?)
          ?.map((allergen) => AllergenType.values.firstWhere(
              (e) => e.toString().split('.').last == allergen))
          .toList() ?? [],
      calories: json['calories'],
      nutritionInfo: json['nutrition_info'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'dietary_types': dietaryTypes.map((e) => e.toString().split('.').last).toList(),
      'allergens': allergens.map((e) => e.toString().split('.').last).toList(),
      'calories': calories,
      'nutrition_info': nutritionInfo,
    };
  }
}