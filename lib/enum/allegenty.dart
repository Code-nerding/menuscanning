enum AllergenType {
  nuts,
  dairy,
  gluten,
  soy,
  seafood,
  eggs,
  wheat,
  sesame,
  shellfish,
  mustard,
  sulfites,
  lupin,
  fish;

  String get displayName {
    switch (this) {
      case AllergenType.nuts:
        return 'Nuts';
      case AllergenType.dairy:
        return 'Dairy';
      case AllergenType.gluten:
        return 'Gluten';
      case AllergenType.soy:
        return 'Soy';
      case AllergenType.seafood:
        return 'Seafood';
      case AllergenType.eggs:
        return 'Eggs';
      case AllergenType.wheat:
        return 'Wheat';
      case AllergenType.sesame:
        return 'Sesame';
      case AllergenType.shellfish:
        return 'Shellfish';
      case AllergenType.mustard:
        return 'Mustard';
      case AllergenType.sulfites:
        return 'Sulfites';
      case AllergenType.lupin:
        return 'Lupin';
      case AllergenType.fish:
        return 'Fish';
    }
  }
}
