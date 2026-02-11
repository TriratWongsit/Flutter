import 'package:flutter/material.dart';
import '../code_preview_template.dart';

class TextInputsPage extends StatelessWidget {
  const TextInputsPage({super.key});

  @override
  Widget build(BuildContext context) {
    const String code = '''
TextField(
  decoration: InputDecoration(
    border: OutlineInputBorder(),
    labelText: 'Enter Name',
  ),
);
''';

    return CodePreviewTemplate(
      title: 'Text Input Widgets',
      codeSnippet: code,
      uiWidget: const Padding(
        padding: EdgeInsets.all(20.0),
        child: TextField(
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            labelText: 'Enter Name',
            prefixIcon: Icon(Icons.person),
          ),
        ),
      ),
    );
  }
}