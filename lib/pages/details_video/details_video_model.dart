import '/flutter_flow/flutter_flow_util.dart';
import 'details_video_widget.dart' show DetailsVideoWidget;
import 'package:flutter/material.dart';

class DetailsVideoModel extends FlutterFlowModel<DetailsVideoWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
