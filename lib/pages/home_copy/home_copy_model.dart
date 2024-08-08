import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'home_copy_widget.dart' show HomeCopyWidget;
import 'package:flutter/material.dart';

class HomeCopyModel extends FlutterFlowModel<HomeCopyWidget> {
  ///  Local state fields for this page.

  List<String> dropValue = [
    '17mAwP8badnmknQA4NZDCLx9LvQHKm8Rz',
    '15V4_J_brVCuuAGnm59TzT-27hKlUBzP1'
  ];
  void addToDropValue(String item) => dropValue.add(item);
  void removeFromDropValue(String item) => dropValue.remove(item);
  void removeAtIndexFromDropValue(int index) => dropValue.removeAt(index);
  void insertAtIndexInDropValue(int index, String item) =>
      dropValue.insert(index, item);
  void updateDropValueAtIndex(int index, Function(String) updateFn) =>
      dropValue[index] = updateFn(dropValue[index]);

  ///  State fields for stateful widgets in this page.

  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
