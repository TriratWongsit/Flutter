import 'package:flutter/material.dart';

class CodePreviewTemplate extends StatelessWidget {
  final String title;
  final Widget uiWidget;
  final String codeSnippet;

  const CodePreviewTemplate({
    super.key,
    required this.title,
    required this.uiWidget,
    required this.codeSnippet,
  });

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text(title),
          bottom: const TabBar(
            tabs: [
              Tab(icon: Icon(Icons.preview), text: 'UI Preview'),
              Tab(icon: Icon(Icons.code), text: 'Source Code'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            // Tab 1: UI
            Center(child: uiWidget),
            // Tab 2: Code
            Container(
              color: const Color(0xFF1E1E1E), // สีพื้นหลังแบบ Dark Theme
              width: double.infinity,
              padding: const EdgeInsets.all(16.0),
              child: SingleChildScrollView(
                child: Text(
                  codeSnippet,
                  style: const TextStyle(
                    fontFamily: 'monospace',
                    color: Colors.greenAccent, // สีตัวหนังสือ
                    fontSize: 14,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}