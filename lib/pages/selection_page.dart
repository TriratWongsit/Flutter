import 'package:flutter/material.dart';
import '../code_preview_template.dart';

class SelectionPage extends StatefulWidget {
  const SelectionPage({super.key});

  @override
  State<SelectionPage> createState() => _SelectionPageState();
}

class _SelectionPageState extends State<SelectionPage> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    const String code = '''
Checkbox(
  value: isChecked,
  onChanged: (bool? value) {
    setState(() {
      isChecked = value!;
    });
  },
);
''';

    return CodePreviewTemplate(
      title: 'Selection Widgets',
      codeSnippet: code,
      uiWidget: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text("Accept Terms: "),
          Checkbox(
            value: isChecked,
            onChanged: (bool? value) {
              setState(() {
                isChecked = value!;
              });
            },
          ),
        ],
      ),
    );
  }
}