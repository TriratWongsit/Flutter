import 'package:flutter/material.dart';
import '../code_preview_template.dart';

class CommunicationPage extends StatelessWidget {
  const CommunicationPage({super.key});

  @override
  Widget build(BuildContext context) {
    const String code = '''
ElevatedButton(
  onPressed: () {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text("Hello SnackBar!")),
    );
  },
  child: Text("Show SnackBar"),
);
''';

    return CodePreviewTemplate(
      title: 'Communication Widgets',
      codeSnippet: code,
      uiWidget: ElevatedButton(
        onPressed: () {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text("Hello SnackBar!")),
          );
        },
        child: const Text("Show SnackBar"),
      ),
    );
  }
}