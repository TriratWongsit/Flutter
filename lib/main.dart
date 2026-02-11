import 'package:flutter/material.dart';
// Import หน้าต่างๆ
import 'pages/actions_page.dart';
import 'pages/communication_page.dart';
import 'pages/containment_page.dart';
import 'pages/navigation_demo_page.dart';
import 'pages/selection_page.dart';
import 'pages/text_inputs_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Widgets Lab',
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
      ),
      // กำหนด Route เริ่มต้น
      initialRoute: '/',
      routes: {
        '/': (context) => const HomePage(),
        '/actions': (context) => const ActionsPage(),
        '/communication': (context) => const CommunicationPage(),
        '/containment': (context) => const ContainmentPage(),
        '/navigation': (context) => const NavigationDemoPage(),
        '/selection': (context) => const SelectionPage(),
        '/text_inputs': (context) => const TextInputsPage(),
      },
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Main Menu: Material Widgets')),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          _menuItem(context, '1. Actions', '/actions', Icons.touch_app),
          _menuItem(context, '2. Communication', '/communication', Icons.message),
          _menuItem(context, '3. Containment', '/containment', Icons.layers),
          _menuItem(context, '4. Navigation', '/navigation', Icons.map),
          _menuItem(context, '5. Selection', '/selection', Icons.check_box),
          _menuItem(context, '6. Text Inputs', '/text_inputs', Icons.text_fields),
        ],
      ),
    );
  }

  Widget _menuItem(BuildContext context, String title, String route, IconData icon) {
    return Card(
      margin: const EdgeInsets.only(bottom: 10),
      child: ListTile(
        leading: Icon(icon),
        title: Text(title),
        trailing: const Icon(Icons.arrow_forward_ios, size: 16),
        onTap: () => Navigator.pushNamed(context, route),
      ),
    );
  }
}