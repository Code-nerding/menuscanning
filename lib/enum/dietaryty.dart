enum DietaryType {
  vegetarian,
  vegan,
  glutenFree,
  dairyFree,
  nutFree,
  keto,
  kosher,
  lowCarb,
  spicy,
  halal,
  organic;

  String get displayName {
    switch (this) {
      case DietaryType.vegetarian:
        return 'Vegetarian';
      case DietaryType.vegan:
        return 'Vegan';
      case DietaryType.glutenFree:
        return 'Gluten Free';
      case DietaryType.dairyFree:
        return 'Dairy Free';
      case DietaryType.nutFree:
        return 'Nut Free';
      case DietaryType.keto:
        return 'Keto';
      case DietaryType.kosher:
        return 'Kosher';
      case DietaryType.lowCarb:
        return 'Low Carb';
      case DietaryType.spicy:
        return 'Spicy';
      case DietaryType.halal:
        return 'Halal';
      case DietaryType.organic:
        return 'Organic';
    }
  }

  String get icon {
    switch(this) {
      case DietaryType.vegetarian:
        return '🥬';
      case DietaryType.vegan:
        return '🌱';
      case DietaryType.glutenFree:
        return '🚫🌾';
      case DietaryType.dairyFree:
        return '🚫🥛';
      case DietaryType.nutFree:
        return '🚫🥜';
      case DietaryType.halal:
        return '☪️';
      case DietaryType.kosher:
        return '✡️';
      case DietaryType.keto:
        return '🥑';
      case DietaryType.lowCarb:
        return '🥗';
      case DietaryType.spicy:
        return '🌶️';
      case DietaryType.organic:
        return '🌿';
    }
  }
}
