// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AIContentResultStruct extends BaseStruct {
  AIContentResultStruct({
    String? craftName,
    String? description,
    String? difficulty,
    List<String>? materials,
    List<String>? steps,
  })  : _craftName = craftName,
        _description = description,
        _difficulty = difficulty,
        _materials = materials,
        _steps = steps;

  // "craft_name" field.
  String? _craftName;
  String get craftName => _craftName ?? '';
  set craftName(String? val) => _craftName = val;

  bool hasCraftName() => _craftName != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  set description(String? val) => _description = val;

  bool hasDescription() => _description != null;

  // "difficulty" field.
  String? _difficulty;
  String get difficulty => _difficulty ?? '';
  set difficulty(String? val) => _difficulty = val;

  bool hasDifficulty() => _difficulty != null;

  // "materials" field.
  List<String>? _materials;
  List<String> get materials => _materials ?? const [];
  set materials(List<String>? val) => _materials = val;

  void updateMaterials(Function(List<String>) updateFn) {
    updateFn(_materials ??= []);
  }

  bool hasMaterials() => _materials != null;

  // "steps" field.
  List<String>? _steps;
  List<String> get steps => _steps ?? const [];
  set steps(List<String>? val) => _steps = val;

  void updateSteps(Function(List<String>) updateFn) {
    updateFn(_steps ??= []);
  }

  bool hasSteps() => _steps != null;

  static AIContentResultStruct fromMap(Map<String, dynamic> data) =>
      AIContentResultStruct(
        craftName: data['craft_name'] as String?,
        description: data['description'] as String?,
        difficulty: data['difficulty'] as String?,
        materials: getDataList(data['materials']),
        steps: getDataList(data['steps']),
      );

  static AIContentResultStruct? maybeFromMap(dynamic data) => data is Map
      ? AIContentResultStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'craft_name': _craftName,
        'description': _description,
        'difficulty': _difficulty,
        'materials': _materials,
        'steps': _steps,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'craft_name': serializeParam(
          _craftName,
          ParamType.String,
        ),
        'description': serializeParam(
          _description,
          ParamType.String,
        ),
        'difficulty': serializeParam(
          _difficulty,
          ParamType.String,
        ),
        'materials': serializeParam(
          _materials,
          ParamType.String,
          isList: true,
        ),
        'steps': serializeParam(
          _steps,
          ParamType.String,
          isList: true,
        ),
      }.withoutNulls;

  static AIContentResultStruct fromSerializableMap(Map<String, dynamic> data) =>
      AIContentResultStruct(
        craftName: deserializeParam(
          data['craft_name'],
          ParamType.String,
          false,
        ),
        description: deserializeParam(
          data['description'],
          ParamType.String,
          false,
        ),
        difficulty: deserializeParam(
          data['difficulty'],
          ParamType.String,
          false,
        ),
        materials: deserializeParam<String>(
          data['materials'],
          ParamType.String,
          true,
        ),
        steps: deserializeParam<String>(
          data['steps'],
          ParamType.String,
          true,
        ),
      );

  @override
  String toString() => 'AIContentResultStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is AIContentResultStruct &&
        craftName == other.craftName &&
        description == other.description &&
        difficulty == other.difficulty &&
        listEquality.equals(materials, other.materials) &&
        listEquality.equals(steps, other.steps);
  }

  @override
  int get hashCode => const ListEquality()
      .hash([craftName, description, difficulty, materials, steps]);
}

AIContentResultStruct createAIContentResultStruct({
  String? craftName,
  String? description,
  String? difficulty,
}) =>
    AIContentResultStruct(
      craftName: craftName,
      description: description,
      difficulty: difficulty,
    );
