// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'project.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProjectFeatures _$ProjectFeaturesFromJson(Map<String, dynamic> json) =>
    ProjectFeatures(
      scripting: json['scripting'] as bool? ?? false,
      typescript: json['typescript'] as bool? ?? false,
      betaApis: json['betaApis'] as bool? ?? false,
      playerDotJson: json['playerDotJson'] as bool? ?? false,
    );

Map<String, dynamic> _$ProjectFeaturesToJson(ProjectFeatures instance) =>
    <String, dynamic>{
      'scripting': instance.scripting,
      'typescript': instance.typescript,
      'betaApis': instance.betaApis,
      'playerDotJson': instance.playerDotJson,
    };

ProjectElements _$ProjectElementsFromJson(Map<String, dynamic> json) =>
    ProjectElements(
      behaviorPack: json['behaviorPack'] as bool? ?? false,
      resourcePack: json['resourcePack'] as bool? ?? false,
      worldTemplate: json['worldTemplate'] as bool? ?? false,
    );

Map<String, dynamic> _$ProjectElementsToJson(ProjectElements instance) =>
    <String, dynamic>{
      'behaviorPack': instance.behaviorPack,
      'resourcePack': instance.resourcePack,
      'worldTemplate': instance.worldTemplate,
    };

ProjectData _$ProjectDataFromJson(Map<String, dynamic> json) => ProjectData(
      name: json['name'] as String,
      author: json['author'] as String?,
      description: json['description'] as String?,
      features: json['features'] == null
          ? const ProjectFeatures()
          : ProjectFeatures.fromJson(json['features'] as Map<String, dynamic>),
      elements: json['elements'] == null
          ? const ProjectElements()
          : ProjectElements.fromJson(json['elements'] as Map<String, dynamic>),
      hasIcon: json['hasIcon'] as bool? ?? false,
    );

Map<String, dynamic> _$ProjectDataToJson(ProjectData instance) =>
    <String, dynamic>{
      'hasIcon': instance.hasIcon,
      'name': instance.name,
      'author': instance.author,
      'description': instance.description,
      'features': instance.features,
      'elements': instance.elements,
    };
