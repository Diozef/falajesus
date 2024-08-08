import '/creation_login/edit_profile_auth_2/edit_profile_auth2_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'criar_perfil_widget.dart' show CriarPerfilWidget;
import 'package:flutter/material.dart';

class CriarPerfilModel extends FlutterFlowModel<CriarPerfilWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for editProfile_auth_2 component.
  late EditProfileAuth2Model editProfileAuth2Model;

  @override
  void initState(BuildContext context) {
    editProfileAuth2Model = createModel(context, () => EditProfileAuth2Model());
  }

  @override
  void dispose() {
    editProfileAuth2Model.dispose();
  }
}
