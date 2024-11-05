// widgets/form_widget.dart
import 'package:flutter/material.dart';

class FormWidget extends StatelessWidget {
  final GlobalKey<FormState> formKey;
  final Column child;

  const FormWidget({
    super.key,
    required this.formKey,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: child,
    );
  }
}
