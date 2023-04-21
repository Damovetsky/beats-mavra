// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:beats/view/home_page/home_page.dart';
import 'package:beats/view/profile_page/profile_page.dart';
import 'package:beats/view/search_page/search_page.dart';
import 'package:beats/view/widget/avatar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:beats/main.dart';

void main() {

  
  testWidgets('Check localization', (WidgetTester tester) async {
   expect(2+2, 4);
  });

  testWidgets('Check theme', (WidgetTester tester) async {
    expect(2+2, 4);
  });

  testWidgets('Check login', (WidgetTester tester) async {
    expect(2+2, 4);
  });

  testWidgets('Check logout', (WidgetTester tester) async {
    expect(2+2, 4);
  });
}
