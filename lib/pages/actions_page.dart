import 'package:flutter/material.dart';
import '../code_preview_template.dart';

class ActionsPage extends StatelessWidget {
  const ActionsPage({super.key});

  @override
  Widget build(BuildContext context) {
    const String code = '''
FloatingActionButton(
  onPressed: () {},
  child: Icon(Icons.add),
);

ElevatedButton(
  onPressed: () {},
  child: Text("Elevated Button"),
);
''';

    return CodePreviewTemplate(
      title: 'Actions Widgets',
      codeSnippet: code,
      uiWidget: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FloatingActionButton(
            onPressed: () {},
            child: const Icon(Icons.add),
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {},
            child: const Text("Elevated Button"),
          ),
        ],
      ),
    );
  }
}