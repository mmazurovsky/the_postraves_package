import 'package:json_annotation/json_annotation.dart';

class DateTimeConverter implements JsonConverter<DateTime?, String?> {
  const DateTimeConverter();

  @override
  DateTime? fromJson(String? jsonDateTime) {
    return jsonDateTime != null ? DateTime.parse(jsonDateTime).toLocal() : null;
  }

  @override
  String? toJson(DateTime? dateTime) {
    return dateTime != null
        ? '${dateTime.toLocal().toIso8601String()}+00:00'
        : null;
  }
}
