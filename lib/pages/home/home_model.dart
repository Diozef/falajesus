import '/components/destaque_widget.dart';
import '/components/footernav_widget.dart';
import '/components/menu_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'home_widget.dart' show HomeWidget;
import 'package:flutter/material.dart';

class HomeModel extends FlutterFlowModel<HomeWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for Menu component.
  late MenuModel menuModel;
  // Model for Destaque component.
  late DestaqueModel destaqueModel;
  // Model for footernav component.
  late FooternavModel footernavModel;

  @override
  void initState(BuildContext context) {
    menuModel = createModel(context, () => MenuModel());
    destaqueModel = createModel(context, () => DestaqueModel());
    footernavModel = createModel(context, () => FooternavModel());
  }

  @override
  void dispose() {
    menuModel.dispose();
    destaqueModel.dispose();
    footernavModel.dispose();
  }
}
