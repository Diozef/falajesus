import '/auth/firebase_auth/auth_util.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'cabecalho_model.dart';
export 'cabecalho_model.dart';

class CabecalhoWidget extends StatefulWidget {
  const CabecalhoWidget({super.key});

  @override
  State<CabecalhoWidget> createState() => _CabecalhoWidgetState();
}

class _CabecalhoWidgetState extends State<CabecalhoWidget> {
  late CabecalhoModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CabecalhoModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: const AlignmentDirectional(0.0, -1.0),
      child: Padding(
        padding: const EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 0.0),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Olá  ',
                  style: FlutterFlowTheme.of(context).headlineMedium.override(
                        fontFamily: 'Plus Jakarta Sans',
                        color: const Color(0xFF38B6FF),
                        fontSize: () {
                          if (MediaQuery.sizeOf(context).width <
                              kBreakpointSmall) {
                            return 13.0;
                          } else if (MediaQuery.sizeOf(context).width <
                              kBreakpointLarge) {
                            return 18.0;
                          } else {
                            return 18.0;
                          }
                        }(),
                        letterSpacing: 0.0,
                      ),
                ),
                AuthUserStreamWidget(
                  builder: (context) => Text(
                    currentUserDisplayName,
                    style: FlutterFlowTheme.of(context).headlineMedium.override(
                          fontFamily: 'Plus Jakarta Sans',
                          color: const Color(0xFF38B6FF),
                          fontSize: () {
                            if (MediaQuery.sizeOf(context).width <
                                kBreakpointSmall) {
                              return 13.0;
                            } else if (MediaQuery.sizeOf(context).width <
                                kBreakpointLarge) {
                              return 18.0;
                            } else {
                              return 18.0;
                            }
                          }(),
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.w600,
                        ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 5.0, 10.0, 5.0),
                  child: AuthUserStreamWidget(
                    builder: (context) => Container(
                      decoration: BoxDecoration(
                        color: currentUserDocument?.statusColor,
                        borderRadius: BorderRadius.circular(10.0),
                        border: Border.all(
                          color: valueOrDefault<Color>(
                            currentUserDocument?.statusColor,
                            FlutterFlowTheme.of(context).info,
                          ),
                        ),
                      ),
                      child: Align(
                        alignment: const AlignmentDirectional(0.0, 0.0),
                        child: Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              10.0, 5.0, 10.0, 5.0),
                          child: Text(
                            valueOrDefault(currentUserDocument?.role, ''),
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Space Grotesk',
                                  color: const Color(0xFFEEEEEE),
                                  letterSpacing: 0.0,
                                ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            AuthUserStreamWidget(
              builder: (context) => InkWell(
                splashColor: Colors.transparent,
                focusColor: Colors.transparent,
                hoverColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onTap: () async {
                  context.pushNamed('perfil');
                },
                child: Container(
                  width: () {
                    if (MediaQuery.sizeOf(context).width < kBreakpointSmall) {
                      return 70.0;
                    } else if (MediaQuery.sizeOf(context).width <
                        kBreakpointLarge) {
                      return 100.0;
                    } else {
                      return 100.0;
                    }
                  }(),
                  height: () {
                    if (MediaQuery.sizeOf(context).width < kBreakpointSmall) {
                      return 70.0;
                    } else if (MediaQuery.sizeOf(context).width <
                        kBreakpointLarge) {
                      return 100.0;
                    } else {
                      return 100.0;
                    }
                  }(),
                  decoration: BoxDecoration(
                    color: currentUserDocument?.statusColor,
                    borderRadius: BorderRadius.circular(12.0),
                    shape: BoxShape.rectangle,
                    border: Border.all(
                      color: valueOrDefault<Color>(
                        currentUserDocument?.statusColor,
                        FlutterFlowTheme.of(context).info,
                      ),
                      width: 3.0,
                    ),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10.0),
                    child: Image.network(
                      currentUserPhoto,
                      width: double.infinity,
                      height: double.infinity,
                      fit: BoxFit.cover,
                      alignment: const Alignment(0.0, -1.0),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
