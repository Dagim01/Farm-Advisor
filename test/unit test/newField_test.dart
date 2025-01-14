import 'package:farmadvisor/screens/FirstTimeUser/newFarm.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:farmadvisor/screens/FirstTimeUser/newField.dart';

void main() {
  test('', () {});

  test('field name returns error', () {
    var result = FieldNameValidator.validate('');
    expect(result, 'field name can not be empty');
  });

  test('altitude returns error', () {
    var result = AltitudeValidator.validate('');
    expect(result, 'altitude can not be empty');
  });
}
