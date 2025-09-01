enum LanguageCode {
  en,
  es,
  fr,
  de,
  it,
  pt,
  ru,
  zh,
  ja,
  ko,
  ar,
  ki;

  String get displayName {
    switch (this) {
      case LanguageCode.en:
        return 'English';
      case LanguageCode.es:
        return 'Spanish';
      case LanguageCode.fr:
        return 'French';
      case LanguageCode.de:
        return 'German';
      case LanguageCode.it:
        return 'Italian';
      case LanguageCode.pt:
        return 'Portuguese';
      case LanguageCode.ru:
        return 'Russian';
      case LanguageCode.zh:
        return 'Chinese';
      case LanguageCode.ja:
        return 'Japanese';
      case LanguageCode.ko:
        return 'Korean';
      case LanguageCode.ar:
        return 'Arabic';
      case LanguageCode.ki:
        return 'Kinyarwanda';
    }
  }
}
