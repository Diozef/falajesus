import '/components/destaque_widget.dart';
import '/components/footernav_widget.dart';
import '/components/menu_widget.dart';
import '/components/tags_conteudo_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'modelo_widget.dart' show ModeloWidget;
import 'package:flutter/material.dart';

class ModeloModel extends FlutterFlowModel<ModeloWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for Menu component.
  late MenuModel menuModel;
  // Model for Destaque component.
  late DestaqueModel destaqueModel;
  // Model for tagsConteudo component.
  late TagsConteudoModel tagsConteudoModel;
  // Model for footernav component.
  late FooternavModel footernavModel;

  @override
  void initState(BuildContext context) {
    menuModel = createModel(context, () => MenuModel());
    destaqueModel = createModel(context, () => DestaqueModel());
    tagsConteudoModel = createModel(context, () => TagsConteudoModel());
    footernavModel = createModel(context, () => FooternavModel());
  }

  @override
  void dispose() {
    menuModel.dispose();
    destaqueModel.dispose();
    tagsConteudoModel.dispose();
    footernavModel.dispose();
  }
}
