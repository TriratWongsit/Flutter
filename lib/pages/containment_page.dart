import 'package:flutter/material.dart';
import '../code_preview_template.dart';

class ContainmentPage extends StatelessWidget {
  const ContainmentPage({super.key});

  @override
  Widget build(BuildContext context) {
    const String code = '''
Card(
  elevation: 4,
  child: Padding(
    padding: EdgeInsets.all(16),
    child: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(Icons.home, size: 50),
        Text("Card Example"),
      ],
    ),
  ),
);
''';

    return CodePreviewTemplate(
      title: 'Containment Widgets',
      codeSnippet: code,
      uiWidget: const Card(
        elevation: 4,
        child: Padding(
          padding: EdgeInsets.all(32.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(Icons.home, size: 50),
              SizedBox(height: 10),
              Text("Card Example"),
            ],
          ),
        ),
      ),
    );
  }
}