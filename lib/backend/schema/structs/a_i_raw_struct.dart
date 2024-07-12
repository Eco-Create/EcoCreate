// ignore_for_file: unnecessary_getters_setters


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AIRawStruct extends BaseStruct {
  AIRawStruct({
    bool? success,
    int? code,
    String? message,
    AIResultStruct? data,
  })  : _success = success,
        _code = code,
        _message = message,
        _data = data;

  // "success" field.
  bool? _success;
  bool get success => _success ?? false;
  set success(bool? val) => _success = val;

  bool hasSuccess() => _success != null;

  // "code" field.
  int? _code;
  int get code => _code ?? 0;
  set code(int? val) => _code = val;

  void incrementCode(int amount) => code = code + amount;

  bool hasCode() => _code != null;

  // "message" field.
  String? _message;
  String get message => _message ?? '';
  set message(String? val) => _message = val;

  bool hasMessage() => _message != null;

  // "data" field.
  AIResultStruct? _data;
  AIResultStruct get data => _data ?? AIResultStruct();
  set data(AIResultStruct? val) => _data = val;

  void updateData(Function(AIResultStruct) updateFn) {
    updateFn(_data ??= AIResultStruct());
  }

  bool hasData() => _data != null;

  static AIRawStruct fromMap(Map<String, dynamic> data) => AIRawStruct(
        success: data['success'] as bool?,
        code: castToType<int>(data['code']),
        message: data['message'] as String?,
        data: AIResultStruct.maybeFromMap(data['data']),
      );

  static AIRawStruct? maybeFromMap(dynamic data) =>
      data is Map ? AIRawStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'success': _success,
        'code': _code,
        'message': _message,
        'data': _data?.toMap(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'success': serializeParam(
          _success,
          ParamType.bool,
        ),
        'code': serializeParam(
          _code,
          ParamType.int,
        ),
        'message': serializeParam(
          _message,
          ParamType.String,
        ),
        'data': serializeParam(
          _data,
          ParamType.DataStruct,
        ),
      }.withoutNulls;

  static AIRawStruct fromSerializableMap(Map<String, dynamic> data) =>
      AIRawStruct(
        success: deserializeParam(
          data['success'],
          ParamType.bool,
          false,
        ),
        code: deserializeParam(
          data['code'],
          ParamType.int,
          false,
        ),
        message: deserializeParam(
          data['message'],
          ParamType.String,
          false,
        ),
        data: deserializeStructParam(
          data['data'],
          ParamType.DataStruct,
          false,
          structBuilder: AIResultStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'AIRawStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is AIRawStruct &&
        success == other.success &&
        code == other.code &&
        message == other.message &&
        data == other.data;
  }

  @override
  int get hashCode => const ListEquality().hash([success, code, message, data]);
}

AIRawStruct createAIRawStruct({
  bool? success,
  int? code,
  String? message,
  AIResultStruct? data,
}) =>
    AIRawStruct(
      success: success,
      code: code,
      message: message,
      data: data ?? AIResultStruct(),
    );
