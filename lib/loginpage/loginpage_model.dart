import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/add_project_widget.dart';
import '/components/side_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'loginpage_widget.dart' show LoginpageWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class LoginpageModel extends FlutterFlowModel<LoginpageWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for side component.
  late SideModel sideModel;

  @override
  void initState(BuildContext context) {
    sideModel = createModel(context, () => SideModel());
  }

  @override
  void dispose() {
    sideModel.dispose();
  }
}
