import 'package:flutter_test/flutter_test.dart';
import 'package:flutter/material.dart';
import 'package:inner_shadow_container/inner_shadow_container.dart';

void main() {
  testWidgets('renders InnerShadowContainer with child',
      (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: InnerShadowContainer(
            height: 100,
            width: 100,
            child: Text('Hello'),
          ),
        ),
      ),
    );

    expect(find.text('Hello'), findsOneWidget);
  });
}
