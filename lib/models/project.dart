import 'package:json_annotation/json_annotation.dart';

part 'project.g.dart';

@JsonSerializable()
class ProjectFeatures {
  const ProjectFeatures(
      {this.scripting = false,
      this.typescript = false,
      this.betaApis = false,
      this.playerDotJson = false});

  final bool scripting;
  final bool typescript;
  final bool betaApis;
  final bool playerDotJson;

  factory ProjectFeatures.fromJson(Map<String, dynamic> json) =>
      _$ProjectFeaturesFromJson(json);

  Map<String, dynamic> toJson() => _$ProjectFeaturesToJson(this);
}

@JsonSerializable()
class ProjectElements {
  const ProjectElements(
      {this.behaviorPack = false,
      this.resourcePack = false,
      this.worldTemplate = false});

  final bool behaviorPack;
  final bool resourcePack;
  final bool worldTemplate;

  factory ProjectElements.fromJson(Map<String, dynamic> json) =>
      _$ProjectElementsFromJson(json);

  Map<String, dynamic> toJson() => _$ProjectElementsToJson(this);
}

@JsonSerializable()
class ProjectData {
  const ProjectData({
    required this.name,
    this.author,
    this.description,
    this.features = const ProjectFeatures(),
    this.elements = const ProjectElements(),
    this.hasIcon = false,
  });

  final bool hasIcon;
  final String name;
  final String? author;
  final String? description;
  final ProjectFeatures features;
  final ProjectElements elements;

  factory ProjectData.fromJson(Map<String, dynamic> json) =>
      _$ProjectDataFromJson(json);

  Map<String, dynamic> toJson() => _$ProjectDataToJson(this);
}
