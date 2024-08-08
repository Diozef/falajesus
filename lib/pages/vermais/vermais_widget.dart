import '/components/destkunico_widget.dart';
import '/components/footernav_widget.dart';
import '/components/menu_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'vermais_model.dart';
export 'vermais_model.dart';

class VermaisWidget extends StatefulWidget {
  const VermaisWidget({super.key});

  @override
  State<VermaisWidget> createState() => _VermaisWidgetState();
}

class _VermaisWidgetState extends State<VermaisWidget> {
  late VermaisModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => VermaisModel());

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
        backgroundColor: const Color(0xFF131313),
        body: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Expanded(
                  child: wrapWithModel(
                    model: _model.menuModel,
                    updateCallback: () => setState(() {}),
                    child: const MenuWidget(),
                  ),
                ),
              ],
            ),
            Flexible(
              child: Container(
                decoration: const BoxDecoration(
                  color: Color(0xFF131313),
                ),
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Stack(
                        children: [
                          Align(
                            alignment: const AlignmentDirectional(0.0, -1.0),
                            child: Container(
                              width: double.infinity,
                              decoration: const BoxDecoration(),
                              child: wrapWithModel(
                                model: _model.destkunicoModel,
                                updateCallback: () => setState(() {}),
                                child: const DestkunicoWidget(),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 20.0),
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 50.0, 0.0, 0.0),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(8.0),
                                  child: Image.network(
                                    'https://picsum.photos/seed/256/600',
                                    width: 125.0,
                                    height: 175.0,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 50.0, 0.0, 0.0),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(8.0),
                                  child: Image.network(
                                    'https://picsum.photos/seed/256/600',
                                    width: 245.0,
                                    height: 140.0,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ].divide(const SizedBox(width: 8.0)),
                          ),
                        ),
                      ),
                      Slidable(
                        endActionPane: ActionPane(
                          motion: const ScrollMotion(),
                          extentRatio: 0.75,
                          children: [
                            SlidableAction(
                              label: 'Share',
                              backgroundColor:
                                  FlutterFlowTheme.of(context).info,
                              icon: Icons.share,
                              onPressed: (_) {
                                print('SlidableActionWidget pressed ...');
                              },
                            ),
                            SlidableAction(
                              label: 'Share',
                              backgroundColor:
                                  FlutterFlowTheme.of(context).info,
                              icon: Icons.share,
                              onPressed: (_) {
                                print('SlidableActionWidget pressed ...');
                              },
                            ),
                            SlidableAction(
                              label: 'Share',
                              backgroundColor:
                                  FlutterFlowTheme.of(context).info,
                              icon: Icons.share,
                              onPressed: (_) {
                                print('SlidableActionWidget pressed ...');
                              },
                            ),
                          ],
                        ),
                        child: ListTile(
                          title: Text(
                            'Title',
                            style: FlutterFlowTheme.of(context)
                                .titleLarge
                                .override(
                                  fontFamily: 'Plus Jakarta Sans',
                                  letterSpacing: 0.0,
                                ),
                          ),
                          subtitle: Text(
                            'Subtitle goes here...',
                            style: FlutterFlowTheme.of(context)
                                .labelMedium
                                .override(
                                  fontFamily: 'Space Grotesk',
                                  letterSpacing: 0.0,
                                ),
                          ),
                          trailing: Icon(
                            Icons.arrow_forward_ios,
                            color: FlutterFlowTheme.of(context).secondaryText,
                            size: 20.0,
                          ),
                          tileColor:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          dense: false,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                if (MediaQuery.sizeOf(context).width <= 450.0)
                  Expanded(
                    child: Container(
                      width: 100.0,
                      height: 60.0,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                      ),
                      child: wrapWithModel(
                        model: _model.footernavModel,
                        updateCallback: () => setState(() {}),
                        child: const FooternavWidget(),
                      ),
                    ),
                  ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
