import 'package:flutter/material.dart';
import 'package:inner_shadow_container/inner_shadow_container.dart';

void main() {
  runApp(const InnerShadowExampleApp());
}

class InnerShadowExampleApp extends StatelessWidget {
  const InnerShadowExampleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Inner Shadow Container Example',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const InnerShadowDemoScreen(),
    );
  }
}

class InnerShadowDemoScreen extends StatelessWidget {
  const InnerShadowDemoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Inner Shadow Example'),
      ),
      backgroundColor: const Color(0xFFE0E5EC),
      body: Center(
        child: InnerShadowContainer(
          height: 160,
          width: 160,
          borderRadius: 30,
          backgroundColor: const Color(0xFFE0E5EC),
          isShadowTopLeft: true,
          isShadowBottomRight: true,
          child: const Icon(Icons.favorite, size: 60, color: Colors.red),
        ),
      ),
    );
  }
}
