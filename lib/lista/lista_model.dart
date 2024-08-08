import '/components/listas_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'lista_widget.dart' show ListaWidget;
import 'package:flutter/material.dart';

class ListaModel extends FlutterFlowModel<ListaWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for listas component.
  late ListasModel listasModel;

  @override
  void initState(BuildContext context) {
    listasModel = createModel(context, () => ListasModel());
  }

  @override
  void dispose() {
    listasModel.dispose();
  }
}
