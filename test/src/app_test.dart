import 'package:app_example/src/app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('deve criar o app corretamente', (tester) async {
    final app = App.createApp();
    await tester.pumpWidget(app);
    await tester.pumpAndSettle();

    expect(find.byType(MaterialApp), findsOneWidget);
    expect(app.themeMode, ThemeMode.dark);
  });
}
