enum NotificationType {
  orderUpdate,
  promotion,
  loyaltyReward,
  menuUpdate,
  general;

  String get displayName {
    switch (this) {
      case NotificationType.orderUpdate:
        return 'Order Update';
      case NotificationType.promotion:
        return 'Promotion';
      case NotificationType.loyaltyReward:
        return 'Loyalty Reward';
      case NotificationType.menuUpdate:
        return 'Menu Update';
      case NotificationType.general:
        return 'General';
    }
  }
}
