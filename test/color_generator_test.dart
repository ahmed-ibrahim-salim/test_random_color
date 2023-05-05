import 'package:flutter/material.dart';
import 'package:test/test.dart';
import 'package:test_random_color/color_generator.dart';

void main() {
  test('Color generator generates correct color values', () {
    // given
    Color generatedColor = ColorGenerator.generateRandomColor();

    // (255,220,100)
    const int minimumAllowedNumber = 10;

    // when
    bool colorNumberForRed = generatedColor.red > minimumAllowedNumber;
    bool colorNumberForGreen = generatedColor.green > minimumAllowedNumber;
    bool colorNumberForBlue = generatedColor.blue > minimumAllowedNumber;

    // then
    expect(colorNumberForRed, true);
    expect(colorNumberForGreen, true);
    expect(colorNumberForBlue, true);
    //
  });
}
