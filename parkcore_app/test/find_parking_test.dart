import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:parkcore_app/parking/find_parking.dart';

void main() {
  testWidgets('Find the Find Parking page title', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(MaterialApp(
      home: FindParking(title: 'Find Parking', city: 'Chico', latlong: '{39.7285,-121.8375}'),
    ));

    // Find title
    final titleFinder = find.text('Find Parking');
    expect(titleFinder, findsOneWidget);
  });
  testWidgets('Calculate Distance RaisedButton Field', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(MaterialApp(
      home: FindParking(title: 'Find Parking', city: 'Chico', latlong: '{39.7285,-121.8375}'),
    ));

    expect(find.widgetWithText(RaisedButton, 'Show distance to CSU, Chico'), findsOneWidget);
  }); 

  testWidgets('Haversize for Distance', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(MaterialApp(
      home: FindParking(title: 'Find Parking', city: 'Chico', latlong: '{39.7285,-121.8375}'),
    ));

    expect(FindParking().createState().haversize('{39.727580,-121.840430}'), '13');
  });

  testWidgets('Adjust Distance-Less than a Mile', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(MaterialApp(
      home: FindParking(title: 'Find Parking', city: 'Chico', latlong: '{39.7285,-121.8375}'),
    ));

    expect(FindParking().createState().adjustDistance(.5), .5);
  });
  
  testWidgets('Adjust Distance-More than a Mile', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(MaterialApp(
      home: FindParking(title: 'Find Parking', city: 'Chico', latlong: '{39.7285,-121.8375}'),
    ));

    expect(FindParking().createState().adjustDistance(3.6), 4.35);
  });
}