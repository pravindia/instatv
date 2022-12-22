import 'package:json_annotation/json_annotation.dart';

part 'shows.g.dart';

@JsonSerializable()
class Shows {
  late int id;
  late String name;
  String? summary;
  String? airdate;
  DateTime? airstamp;
  ShowImage? image;

  Shows();

  factory Shows.fromJson(Map<String, dynamic> json) => _$ShowsFromJson(json);

  Map<String, dynamic> toJson() => _$ShowsToJson(this);
}

@JsonSerializable()
class ShowImage {
  String? medium;
  String? original;

  ShowImage();

  factory ShowImage.fromJson(Map<String, dynamic> json) =>
      _$ShowImageFromJson(json);

  Map<String, dynamic> toJson() => _$ShowImageToJson(this);
}
