// ignore_for_file: unnecessary_getters_setters


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AIResultStruct extends BaseStruct {
  AIResultStruct({
    String? detectedMaterial,
    String? creativeOpening,
    AIContentResultStruct? result,
    String? fallbackMessage,
  })  : _detectedMaterial = detectedMaterial,
        _creativeOpening = creativeOpening,
        _result = result,
        _fallbackMessage = fallbackMessage;

  // "detected_material" field.
  String? _detectedMaterial;
  String get detectedMaterial => _detectedMaterial ?? '';
  set detectedMaterial(String? val) => _detectedMaterial = val;

  bool hasDetectedMaterial() => _detectedMaterial != null;

  // "creative_opening" field.
  String? _creativeOpening;
  String get creativeOpening => _creativeOpening ?? '';
  set creativeOpening(String? val) => _creativeOpening = val;

  bool hasCreativeOpening() => _creativeOpening != null;

  // "result" field.
  AIContentResultStruct? _result;
  AIContentResultStruct get result => _result ?? AIContentResultStruct();
  set result(AIContentResultStruct? val) => _result = val;

  void updateResult(Function(AIContentResultStruct) updateFn) {
    updateFn(_result ??= AIContentResultStruct());
  }

  bool hasResult() => _result != null;

  // "fallback_message" field.
  String? _fallbackMessage;
  String get fallbackMessage => _fallbackMessage ?? '';
  set fallbackMessage(String? val) => _fallbackMessage = val;

  bool hasFallbackMessage() => _fallbackMessage != null;

  static AIResultStruct fromMap(Map<String, dynamic> data) => AIResultStruct(
        detectedMaterial: data['detected_material'] as String?,
        creativeOpening: data['creative_opening'] as String?,
        result: AIContentResultStruct.maybeFromMap(data['result']),
        fallbackMessage: data['fallback_message'] as String?,
      );

  static AIResultStruct? maybeFromMap(dynamic data) =>
      data is Map ? AIResultStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'detected_material': _detectedMaterial,
        'creative_opening': _creativeOpening,
        'result': _result?.toMap(),
        'fallback_message': _fallbackMessage,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'detected_material': serializeParam(
          _detectedMaterial,
          ParamType.String,
        ),
        'creative_opening': serializeParam(
          _creativeOpening,
          ParamType.String,
        ),
        'result': serializeParam(
          _result,
          ParamType.DataStruct,
        ),
        'fallback_message': serializeParam(
          _fallbackMessage,
          ParamType.String,
        ),
      }.withoutNulls;

  static AIResultStruct fromSerializableMap(Map<String, dynamic> data) =>
      AIResultStruct(
        detectedMaterial: deserializeParam(
          data['detected_material'],
          ParamType.String,
          false,
        ),
        creativeOpening: deserializeParam(
          data['creative_opening'],
          ParamType.String,
          false,
        ),
        result: deserializeStructParam(
          data['result'],
          ParamType.DataStruct,
          false,
          structBuilder: AIContentResultStruct.fromSerializableMap,
        ),
        fallbackMessage: deserializeParam(
          data['fallback_message'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'AIResultStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is AIResultStruct &&
        detectedMaterial == other.detectedMaterial &&
        creativeOpening == other.creativeOpening &&
        result == other.result &&
        fallbackMessage == other.fallbackMessage;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([detectedMaterial, creativeOpening, result, fallbackMessage]);
}

AIResultStruct createAIResultStruct({
  String? detectedMaterial,
  String? creativeOpening,
  AIContentResultStruct? result,
  String? fallbackMessage,
}) =>
    AIResultStruct(
      detectedMaterial: detectedMaterial,
      creativeOpening: creativeOpening,
      result: result ?? AIContentResultStruct(),
      fallbackMessage: fallbackMessage,
    );
