import '/components/destkunico_widget.dart';
import '/components/footernav_widget.dart';
import '/components/menu_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'vermais_widget.dart' show VermaisWidget;
import 'package:flutter/material.dart';

class VermaisModel extends FlutterFlowModel<VermaisWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for Menu component.
  late MenuModel menuModel;
  // Model for Destkunico component.
  late DestkunicoModel destkunicoModel;
  // Model for footernav component.
  late FooternavModel footernavModel;

  @override
  void initState(BuildContext context) {
    menuModel = createModel(context, () => MenuModel());
    destkunicoModel = createModel(context, () => DestkunicoModel());
    footernavModel = createModel(context, () => FooternavModel());
  }

  @override
  void dispose() {
    menuModel.dispose();
    destkunicoModel.dispose();
    footernavModel.dispose();
  }
}
