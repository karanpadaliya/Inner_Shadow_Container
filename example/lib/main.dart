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
      title: 'Inner Shadow Demo',
      debugShowCheckedModeBanner: false,
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF4F4F4),
      appBar: AppBar(
        title: const Text(
          'Inner Shadow Container',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
        ),
        backgroundColor: Colors.white,
        foregroundColor: const Color(0xff2F648E),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Wrap(
                alignment: WrapAlignment.center,
                spacing: 30,
                runSpacing: 10,
                children: [
                  _buildShadowBox(title: 'Top Left Shadow', isShadowTopLeft: true),
                  _buildShadowBox(title: 'Top Right Shadow', isShadowTopRight: true),
                  _buildShadowBox(title: 'Bottom Left Shadow', isShadowBottomLeft: true),
                  _buildShadowBox(title: 'Bottom Right Shadow', isShadowBottomRight: true),
                  _buildShadowBox(
                    title: 'Bottom Left/Right\nTop Right Shadow',
                    isShadowTopRight: true,
                    isShadowBottomLeft: true,
                    isShadowBottomRight: true,
                  ),
                  _buildShadowBox(
                    title: 'Top Left/Right\nBottom Right Shadow',
                    isShadowTopLeft: true,
                    isShadowTopRight: true,
                    isShadowBottomRight: true,
                  ),
                  _buildShadowBox(
                    title: 'Top Left\nBottom Left Shadow',
                    isShadowTopLeft: true,
                    isShadowBottomLeft: true,
                  ),
                  _buildShadowBox(
                    title: 'Top Right\nBottom Right Shadow',
                    isShadowTopRight: true,
                    isShadowBottomRight: true,
                  ),
                  _buildShadowBox(
                    title: 'All Corners Shadow',
                    isShadowTopLeft: true,
                    isShadowTopRight: true,
                    isShadowBottomLeft: true,
                    isShadowBottomRight: true,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildShadowBox({
    required String title,
    bool isShadowTopLeft = false,
    bool isShadowTopRight = false,
    bool isShadowBottomLeft = false,
    bool isShadowBottomRight = false,
  }) {
    return InnerShadowContainer(
      height: 140,
      width: 140,
      borderRadius: 20,
      backgroundColor: Colors.white,
      blur: 8,
      offset: const Offset(5, 5),
      shadowColor: Colors.black12,
      isShadowTopLeft: isShadowTopLeft,
      isShadowTopRight: isShadowTopRight,
      isShadowBottomLeft: isShadowBottomLeft,
      isShadowBottomRight: isShadowBottomRight,
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            title,
            style: const TextStyle(fontSize: 13, fontWeight: FontWeight.w600),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
