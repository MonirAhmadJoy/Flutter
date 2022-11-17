import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';

import 'package:flutter_application_1/main.dart' as app;

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  group('end-to-end test', () {
    testWidgets('tap on the call item and verify the desired screen change',
        (tester) async {
      app.main();
      await tester.pumpAndSettle();

      // //verify one widget in the home page
      expect(find.byIcon(Icons.call), findsOneWidget);

      // // Finds the call item on the bottomNavigationbar.
      final Finder fab = find.byIcon(Icons.call);

      // // Emulate a tap on the call item.
      await tester.tap(fab);

      // // Trigger a frame.
      await tester.pumpAndSettle();

      // // Verify the screen change into emergency helping call list
      expect(find.byIcon(Icons.call), findsWidgets);

      await Future.delayed(Duration(seconds: 2));
    });
  });
}
