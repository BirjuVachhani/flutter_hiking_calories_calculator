// Author: Birju Vachhani (https://github.com/birjuvachhani)
// Created Date: January 06, 2020

import 'package:hiking_calories_calculator/calculator/calculation.dart';
import 'package:hiking_calories_calculator/calculator/calories_calculator.dart';
import 'package:hiking_calories_calculator/calculator/speed.dart';
import 'package:hiking_calories_calculator/calculator/terrain_factors.dart';
import 'package:hiking_calories_calculator/calculator/weight.dart';

void main() {
  Calculation calculation = CaloriesCalculator.calculateCalories(
      weight: Weight(lbs: 120),
      bagWeight: Weight(lbs: 20),
      speed: Speed(mph: 4),
      terrain: Terrains.WET_CLAY_OR_ICE,
      inclination: 0);
  print("\nCalories per Hour:");
  print(calculation.kcalPerHour.ceil().toString());
  print("\nCalories per Mile:");
  print(calculation.kcalPerMile.ceil().toString());
}
