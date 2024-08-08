import '/components/tags_conteudo_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'destaque_widget.dart' show DestaqueWidget;
import 'package:flutter/material.dart';

class DestaqueModel extends FlutterFlowModel<DestaqueWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for PageView widget.
  PageController? pageViewController;

  int get pageViewCurrentIndex => pageViewController != null &&
          pageViewController!.hasClients &&
          pageViewController!.page != null
      ? pageViewController!.page!.round()
      : 0;
  // Model for tagsConteudo component.
  late TagsConteudoModel tagsConteudoModel;

  @override
  void initState(BuildContext context) {
    tagsConteudoModel = createModel(context, () => TagsConteudoModel());
  }

  @override
  void dispose() {
    tagsConteudoModel.dispose();
  }
}
