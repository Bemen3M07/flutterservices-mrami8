import 'dart:convert';

List<String> brandModelFromJson(String str) {
  return List<String>.from(json.decode(str).map((x) => x.toString()));
}
