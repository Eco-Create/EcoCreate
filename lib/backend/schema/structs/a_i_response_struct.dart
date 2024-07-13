// ignore_for_file: unnecessary_getters_setters


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AIResponseStruct extends BaseStruct {
  AIResponseStruct({
    int? role,
    AIResultStruct? message,
    String? media,
  })  : _role = role,
        _message = message,
        _media = media;

  // "role" field.
  int? _role;
  int get role => _role ?? 0;
  set role(int? val) => _role = val;

  void incrementRole(int amount) => role = role + amount;

  bool hasRole() => _role != null;

  // "message" field.
  AIResultStruct? _message;
  AIResultStruct get message => _message ?? AIResultStruct();
  set message(AIResultStruct? val) => _message = val;

  void updateMessage(Function(AIResultStruct) updateFn) {
    updateFn(_message ??= AIResultStruct());
  }

  bool hasMessage() => _message != null;

  // "media" field.
  String? _media;
  String get media => _media ?? '';
  set media(String? val) => _media = val;

  bool hasMedia() => _media != null;

  static AIResponseStruct fromMap(Map<String, dynamic> data) =>
      AIResponseStruct(
        role: castToType<int>(data['role']),
        message: AIResultStruct.maybeFromMap(data['message']),
        media: data['media'] as String?,
      );

  static AIResponseStruct? maybeFromMap(dynamic data) => data is Map
      ? AIResponseStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'role': _role,
        'message': _message?.toMap(),
        'media': _media,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'role': serializeParam(
          _role,
          ParamType.int,
        ),
        'message': serializeParam(
          _message,
          ParamType.DataStruct,
        ),
        'media': serializeParam(
          _media,
          ParamType.String,
        ),
      }.withoutNulls;

  static AIResponseStruct fromSerializableMap(Map<String, dynamic> data) =>
      AIResponseStruct(
        role: deserializeParam(
          data['role'],
          ParamType.int,
          false,
        ),
        message: deserializeStructParam(
          data['message'],
          ParamType.DataStruct,
          false,
          structBuilder: AIResultStruct.fromSerializableMap,
        ),
        media: deserializeParam(
          data['media'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'AIResponseStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is AIResponseStruct &&
        role == other.role &&
        message == other.message &&
        media == other.media;
  }

  @override
  int get hashCode => const ListEquality().hash([role, message, media]);
}

AIResponseStruct createAIResponseStruct({
  int? role,
  AIResultStruct? message,
  String? media,
}) =>
    AIResponseStruct(
      role: role,
      message: message ?? AIResultStruct(),
      media: media,
    );
