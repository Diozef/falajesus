import '/auth/firebase_auth/auth_util.dart';
import '/components/listas_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:webviewx_plus/webviewx_plus.dart';
import 'footernav_model.dart';
export 'footernav_model.dart';

class FooternavWidget extends StatefulWidget {
  const FooternavWidget({super.key});

  @override
  State<FooternavWidget> createState() => _FooternavWidgetState();
}

class _FooternavWidgetState extends State<FooternavWidget> {
  late FooternavModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => FooternavModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: MediaQuery.sizeOf(context).width <= 450.0,
      child: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFF131313), Color(0xFF080808)],
            stops: [0.0, 1.0],
            begin: AlignmentDirectional(0.0, -1.0),
            end: AlignmentDirectional(0, 1.0),
          ),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          children: [
            Container(
              width: MediaQuery.sizeOf(context).width * 0.25,
              height: 100.0,
              decoration: const BoxDecoration(),
              child: Align(
                alignment: const AlignmentDirectional(0.0, 0.0),
                child: FlutterFlowIconButton(
                  borderColor: Colors.transparent,
                  borderRadius: 40.0,
                  borderWidth: 1.0,
                  buttonSize: 58.0,
                  icon: const Icon(
                    Icons.church,
                    color: Color(0xFFE5E5E5),
                    size: 24.0,
                  ),
                  onPressed: () async {
                    await showModalBottomSheet(
                      isScrollControlled: true,
                      backgroundColor: Colors.transparent,
                      enableDrag: false,
                      context: context,
                      builder: (context) {
                        return WebViewAware(
                          child: Padding(
                            padding: MediaQuery.viewInsetsOf(context),
                            child: const ListasWidget(),
                          ),
                        );
                      },
                    ).then((value) => safeSetState(() {}));
                  },
                ),
              ),
            ),
            Container(
              width: MediaQuery.sizeOf(context).width * 0.25,
              height: 100.0,
              decoration: const BoxDecoration(),
              child: Align(
                alignment: const AlignmentDirectional(0.0, 0.0),
                child: FlutterFlowIconButton(
                  borderColor: Colors.transparent,
                  borderRadius: 40.0,
                  borderWidth: 1.0,
                  buttonSize: 58.0,
                  hoverIconColor: FlutterFlowTheme.of(context).primary,
                  icon: const FaIcon(
                    FontAwesomeIcons.pray,
                    color: Color(0xFFE5E5E5),
                    size: 24.0,
                  ),
                  onPressed: () {
                    print('IconButton pressed ...');
                  },
                ),
              ),
            ),
            Container(
              width: MediaQuery.sizeOf(context).width * 0.25,
              height: 100.0,
              decoration: const BoxDecoration(),
              child: Align(
                alignment: const AlignmentDirectional(0.0, 0.0),
                child: FlutterFlowIconButton(
                  borderRadius: 40.0,
                  borderWidth: 1.0,
                  buttonSize: 58.0,
                  hoverIconColor: FlutterFlowTheme.of(context).primary,
                  icon: const Icon(
                    Icons.favorite,
                    color: Color(0xFFE5E5E5),
                    size: 24.0,
                  ),
                  onPressed: () {
                    print('IconButton pressed ...');
                  },
                ),
              ),
            ),
            Align(
              alignment: const AlignmentDirectional(0.0, 0.0),
              child: Container(
                width: MediaQuery.sizeOf(context).width * 0.25,
                height: 100.0,
                decoration: const BoxDecoration(),
                alignment: const AlignmentDirectional(0.0, 0.0),
                child: AuthUserStreamWidget(
                  builder: (context) => InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      context.pushNamed('perfil');
                    },
                    child: Container(
                      width: 50.0,
                      height: 50.0,
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
                          width: 40.0,
                          height: 40.0,
                          fit: BoxFit.cover,
                          alignment: const Alignment(0.0, -1.0),
                        ),
                      ),
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
