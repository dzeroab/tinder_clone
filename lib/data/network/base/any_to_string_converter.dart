part of 'base.dart';

class AnyToStringConverter implements JsonConverter<String, dynamic> {
  const AnyToStringConverter();

  @override
  String fromJson(json) {
    return json.toString();
  }

  @override
  toJson(String object) {
    return object;
  }
}

class ToBoolJsonConverter implements JsonConverter<bool?, dynamic> {
  const ToBoolJsonConverter();

  @override
  bool? fromJson(json) {
    if (json is bool) return json;
    if (json is int) return json != 0;
    return null;
  }

  @override
  toJson(bool? object) => object;
}
