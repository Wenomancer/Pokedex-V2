// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'held_item_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HeldItemModel _$HeldItemModelFromJson(Map<String, dynamic> json) =>
    HeldItemModel(
      item: json['item'] == null
          ? null
          : SpeciesModel.fromJson(json['item'] as Map<String, dynamic>),
      versionDetails: (json['version_details'] as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : VersionDetailModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$HeldItemModelToJson(HeldItemModel instance) =>
    <String, dynamic>{
      'item': instance.item,
      'version_details': instance.versionDetails,
    };
