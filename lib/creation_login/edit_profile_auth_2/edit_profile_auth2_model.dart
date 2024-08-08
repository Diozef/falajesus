import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'edit_profile_auth2_widget.dart' show EditProfileAuth2Widget;
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class EditProfileAuth2Model extends FlutterFlowModel<EditProfileAuth2Widget> {
  ///  Local state fields for this component.

  Color? color;

  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  // State field(s) for yourName widget.
  FocusNode? yourNameFocusNode;
  TextEditingController? yourNameTextController;
  String? Function(BuildContext, String?)? yourNameTextControllerValidator;
  // State field(s) for e-mail widget.
  FocusNode? eMailFocusNode;
  TextEditingController? eMailTextController;
  String? Function(BuildContext, String?)? eMailTextControllerValidator;
  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  // State field(s) for myBio widget.
  FocusNode? myBioFocusNode;
  TextEditingController? myBioTextController;
  String? Function(BuildContext, String?)? myBioTextControllerValidator;
  DateTime? datePicked;
  // State field(s) for Telefone widget.
  FocusNode? telefoneFocusNode;
  TextEditingController? telefoneTextController;
  final telefoneMask = MaskTextInputFormatter(mask: '(##)#####-####');
  String? Function(BuildContext, String?)? telefoneTextControllerValidator;
  // State field(s) for Textinstagram widget.
  FocusNode? textinstagramFocusNode;
  TextEditingController? textinstagramTextController;
  String? Function(BuildContext, String?)? textinstagramTextControllerValidator;
  // State field(s) for Textfacebook widget.
  FocusNode? textfacebookFocusNode;
  TextEditingController? textfacebookTextController;
  String? Function(BuildContext, String?)? textfacebookTextControllerValidator;
  // State field(s) for Texttwitter widget.
  FocusNode? texttwitterFocusNode;
  TextEditingController? texttwitterTextController;
  String? Function(BuildContext, String?)? texttwitterTextControllerValidator;
  // State field(s) for Textlinkedin widget.
  FocusNode? textlinkedinFocusNode;
  TextEditingController? textlinkedinTextController;
  String? Function(BuildContext, String?)? textlinkedinTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    yourNameFocusNode?.dispose();
    yourNameTextController?.dispose();

    eMailFocusNode?.dispose();
    eMailTextController?.dispose();

    myBioFocusNode?.dispose();
    myBioTextController?.dispose();

    telefoneFocusNode?.dispose();
    telefoneTextController?.dispose();

    textinstagramFocusNode?.dispose();
    textinstagramTextController?.dispose();

    textfacebookFocusNode?.dispose();
    textfacebookTextController?.dispose();

    texttwitterFocusNode?.dispose();
    texttwitterTextController?.dispose();

    textlinkedinFocusNode?.dispose();
    textlinkedinTextController?.dispose();
  }
}
