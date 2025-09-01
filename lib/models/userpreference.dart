import '../enum/allegenty.dart';
import '../enum/dietaryty.dart';
import '../enum/langcode.dart';
import '../enum/notif.dart';

class UserPreferences {
  final List<DietaryType> dietaryRestrictions;
  final List<AllergenType> allergens;
  final LanguageCode preferredLanguage;
  final bool pushNotifications;
  final bool emailNotifications;
  final List<NotificationType> notificationTypes;

  UserPreferences({
    this.dietaryRestrictions = const [],
    this.allergens = const [],
    this.preferredLanguage = LanguageCode.en,
    this.pushNotifications = true,
    this.emailNotifications = true,
    this.notificationTypes = const [],
  });

  factory UserPreferences.fromJson(Map<String, dynamic> json) {
    return UserPreferences(
      dietaryRestrictions: (json['dietary_restrictions'] as List<dynamic>?)
          ?.map((type) => DietaryType.values.firstWhere(
              (e) => e.toString().split('.').last == type))
          .toList() ?? [],
      allergens: (json['allergens'] as List<dynamic>?)
          ?.map((allergen) => AllergenType.values.firstWhere(
              (e) => e.toString().split('.').last == allergen))
          .toList() ?? [],
      preferredLanguage: LanguageCode.values.firstWhere(
          (e) => e.toString().split('.').last == json['preferred_language'],
          orElse: () => LanguageCode.en),
      pushNotifications: json['push_notifications'] ?? true,
      emailNotifications: json['email_notifications'] ?? true,
      notificationTypes: (json['notification_types'] as List<dynamic>?)
          ?.map((type) => NotificationType.values.firstWhere(
              (e) => e.toString().split('.').last == type))
          .toList() ?? [],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'dietary_restrictions': dietaryRestrictions.map((e) => e.toString().split('.').last).toList(),
      'allergens': allergens.map((e) => e.toString().split('.').last).toList(),
      'preferred_language': preferredLanguage.toString().split('.').last,
      'push_notifications': pushNotifications,
      'email_notifications': emailNotifications,
      'notification_types': notificationTypes.map((e) => e.toString().split('.').last).toList(),
    };
  }
}