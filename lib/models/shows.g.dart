// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shows.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Shows _$ShowsFromJson(Map<String, dynamic> json) => Shows()
  ..id = json['id'] as int
  ..name = json['name'] as String
  ..summary = json['summary'] as String?
  ..airdate = json['airdate'] as String?
  ..airstamp = json['airstamp'] == null
      ? null
      : DateTime.parse(json['airstamp'] as String)
  ..image = json['image'] == null
      ? null
      : ShowImage.fromJson(json['image'] as Map<String, dynamic>);

Map<String, dynamic> _$ShowsToJson(Shows instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'summary': instance.summary,
      'airdate': instance.airdate,
      'airstamp': instance.airstamp?.toIso8601String(),
      'image': instance.image,
    };

ShowImage _$ShowImageFromJson(Map<String, dynamic> json) => ShowImage()
  ..medium = json['medium'] as String?
  ..original = json['original'] as String?;

Map<String, dynamic> _$ShowImageToJson(ShowImage instance) => <String, dynamic>{
      'medium': instance.medium,
      'original': instance.original,
    };
