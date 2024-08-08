import '/components/destaque_widget.dart';
import '/components/footernav_widget.dart';
import '/components/menu_widget.dart';
import '/components/tags_conteudo_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'modelo_model.dart';
export 'modelo_model.dart';

class ModeloWidget extends StatefulWidget {
  const ModeloWidget({super.key});

  @override
  State<ModeloWidget> createState() => _ModeloWidgetState();
}

class _ModeloWidgetState extends State<ModeloWidget> {
  late ModeloModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ModeloModel());

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
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              wrapWithModel(
                model: _model.menuModel,
                updateCallback: () => setState(() {}),
                child: const MenuWidget(),
              ),
              Expanded(
                child: Container(
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    color: Color(0xFF080808),
                  ),
                  child: Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 12.0),
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Flexible(
                            child: Stack(
                              children: [
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 16.0),
                                  child: wrapWithModel(
                                    model: _model.destaqueModel,
                                    updateCallback: () => setState(() {}),
                                    child: const DestaqueWidget(),
                                  ),
                                ),
                                wrapWithModel(
                                  model: _model.tagsConteudoModel,
                                  updateCallback: () => setState(() {}),
                                  child: const TagsConteudoWidget(),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            width: 300.0,
                            height: 500.0,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                            ),
                          ),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(8.0),
                            child: Image.network(
                              'https://picsum.photos/seed/824/600',
                              width: 500.0,
                              height: 500.0,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              if (MediaQuery.sizeOf(context).width <= 450.0)
                Container(
                  width: double.infinity,
                  height: 60.0,
                  decoration: const BoxDecoration(),
                  child: wrapWithModel(
                    model: _model.footernavModel,
                    updateCallback: () => setState(() {}),
                    child: const FooternavWidget(),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
