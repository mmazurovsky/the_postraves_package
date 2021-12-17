class DateTimeConverter {
  static const utcOffset = '+00:00';

  static DateTime? fromJson(String? jsonDateTime) {
    return jsonDateTime != null ? DateTime.parse(jsonDateTime).toLocal() : null;
  }

  static DateTime fromJsonNonNullable(String jsonDateTime) {
    return DateTime.parse(jsonDateTime).toLocal();
  }

  static String? toJson(DateTime? dateTime) {
    return dateTime != null
        ? '${dateTime.toLocal().toIso8601String()}$utcOffset'
        : null;
  }

  static String toJsonNonNullable(DateTime dateTime) {
    return '${dateTime.toLocal().toIso8601String()}$utcOffset';
  }
}
