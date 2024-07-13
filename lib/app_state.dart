import 'package:flutter/material.dart';
import 'flutter_flow/request_manager.dart';
import '/backend/schema/structs/index.dart';
import 'backend/supabase/supabase.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  List<AIResponseStruct> _AIConversations = [
    AIResponseStruct.fromSerializableMap(jsonDecode(
        '{\"role\":\"0\",\"message\":\"{\\\"detected_material\\\":\\\"Welcome\\\",\\\"creative_opening\\\":\\\"Welcome! I\'m Eco AI, and i can help you with all creative stuff. Any problems today?\\\",\\\"result\\\":\\\"{\\\\\\\"craft_name\\\\\\\":\\\\\\\"Hello World\\\\\\\",\\\\\\\"description\\\\\\\":\\\\\\\"Hello World\\\\\\\",\\\\\\\"difficulty\\\\\\\":\\\\\\\"Hello World\\\\\\\",\\\\\\\"materials\\\\\\\":\\\\\\\"[\\\\\\\\\\\\\\\"Hello World\\\\\\\\\\\\\\\"]\\\\\\\",\\\\\\\"steps\\\\\\\":\\\\\\\"[\\\\\\\\\\\\\\\"Hello World\\\\\\\\\\\\\\\"]\\\\\\\"}\\\",\\\"fallback_message\\\":\\\"\\\"}\",\"media\":\"\"}'))
  ];
  List<AIResponseStruct> get AIConversations => _AIConversations;
  set AIConversations(List<AIResponseStruct> value) {
    _AIConversations = value;
  }

  void addToAIConversations(AIResponseStruct value) {
    AIConversations.add(value);
  }

  void removeFromAIConversations(AIResponseStruct value) {
    AIConversations.remove(value);
  }

  void removeAtIndexFromAIConversations(int index) {
    AIConversations.removeAt(index);
  }

  void updateAIConversationsAtIndex(
    int index,
    AIResponseStruct Function(AIResponseStruct) updateFn,
  ) {
    AIConversations[index] = updateFn(_AIConversations[index]);
  }

  void insertAtIndexInAIConversations(int index, AIResponseStruct value) {
    AIConversations.insert(index, value);
  }

  bool _AIprocessing = false;
  bool get AIprocessing => _AIprocessing;
  set AIprocessing(bool value) {
    _AIprocessing = value;
  }

  String _TempAIResult = '';
  String get TempAIResult => _TempAIResult;
  set TempAIResult(String value) {
    _TempAIResult = value;
  }

  final _profilesManager = FutureRequestManager<List<ProfilesRow>>();
  Future<List<ProfilesRow>> profiles({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Future<List<ProfilesRow>> Function() requestFn,
  }) =>
      _profilesManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearProfilesCache() => _profilesManager.clear();
  void clearProfilesCacheKey(String? uniqueKey) =>
      _profilesManager.clearRequest(uniqueKey);
}
