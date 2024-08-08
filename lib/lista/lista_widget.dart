import '/components/listas_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'lista_model.dart';
export 'lista_model.dart';

class ListaWidget extends StatefulWidget {
  const ListaWidget({super.key});

  @override
  State<ListaWidget> createState() => _ListaWidgetState();
}

class _ListaWidgetState extends State<ListaWidget> {
  late ListaModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ListaModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: SafeArea(
          top: true,
          child: wrapWithModel(
            model: _model.listasModel,
            updateCallback: () => setState(() {}),
            child: const ListasWidget(),
          ),
        ),
      ),
    );
  }
}
