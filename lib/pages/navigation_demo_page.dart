import 'package:flutter/material.dart';
import '../code_preview_template.dart';

class NavigationDemoPage extends StatelessWidget {
  const NavigationDemoPage({super.key});

  @override
  Widget build(BuildContext context) {
    const String code = '''
// ปุ่มสำหรับกลับหน้าหลัก
ElevatedButton(
  onPressed: () {
    Navigator.pop(context);
  },
  child: Text("Go Back"),
);
''';

    return CodePreviewTemplate(
      title: 'Navigation Demo',
      codeSnippet: code,
      uiWidget: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text("หน้านี้มาจากการใช้ Navigator.pushNamed"),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text("Go Back (Navigator.pop)"),
          ),
        ],
      ),
    );
  }
}