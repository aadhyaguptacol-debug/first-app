// This is a basic Flutter widget test for the first_app project.
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:first_app/gradient_container.dart';

void main() {
  testWidgets('GradientContainer renders successfully and finds roll button', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(
      const MaterialApp(
        home: Scaffold(
          body: GradientContainer(
            Color.fromARGB(255, 33, 5, 109),
            Color.fromARGB(255, 68, 21, 149),
          ),
        ),
      ),
    );

    // Verify that our GradientContainer widget is present in the widget tree.
    expect(find.byType(GradientContainer), findsOneWidget);

    // Verify that the 'Roll Dice' button is present on the screen.
    expect(find.text('Roll Dice'), findsOneWidget);
  });
}