import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:home_page/atoms/input/custom_input.dart';

void main() {
  testWidgets('CustomInput displays label text', (WidgetTester tester) async {
    final controller = TextEditingController();
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: CustomInput(
            controller: controller,
            labelText: 'Test Label',
          ),
        ),
      ),
    );

    expect(find.text('Test Label'), findsOneWidget);
  });

  testWidgets('CustomInput updates controller text on input', (WidgetTester tester) async {
    final controller = TextEditingController();
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: CustomInput(
            controller: controller,
            labelText: 'Test Label',
          ),
        ),
      ),
    );

    await tester.enterText(find.byType(TextFormField), 'Hello');
    expect(controller.text, 'Hello');
  });
}