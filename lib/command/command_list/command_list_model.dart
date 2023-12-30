import '/flutter_flow/flutter_flow_util.dart';
import 'command_list_widget.dart' show CommandListWidget;
import 'package:flutter/material.dart';

class CommandListModel extends FlutterFlowModel<CommandListWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
