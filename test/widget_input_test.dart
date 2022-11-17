import 'package:flutter/material.dart';
import './widget_input.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('Contact widget test', (WidgetTester tester) async {
    await tester.pumpWidget(MyApp());

    //Testing that an textField wiedget with key name_field exist
    var nameField = find.byKey(Key("name_field"));
    expect(nameField, findsOneWidget);

    await tester.enterText(nameField, 'Jack');
    expect(find.text('Jack'), findsOneWidget);

    //Testing that an textField wiedget with key phone_field exist

    var phoneField = find.byKey(Key("phone_field"));
    expect(phoneField, findsOneWidget);

    await tester.enterText(phoneField, '01690074444');
    expect(find.text('01690074444'), findsOneWidget);

    //Verify that an button wiedget works perfectly
    var button = find.text("Submit");
    expect(button, findsOneWidget);

    await tester.tap(button);
    await tester.pump();
    expect(find.text("Jack"), findsOneWidget);
    expect(find.text("01690074444"), findsOneWidget);
  });
}
