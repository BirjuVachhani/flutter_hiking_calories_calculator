/*
 * Copyright © 2020 Simform Solutions
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

// Author: Birju Vachhani (https://github.com/birjuvachhani)
// Created Date: January 06, 2020

import 'package:meta/meta.dart';

import 'calories.dart';
import 'speed.dart';
import 'terrain_factors.dart';
import 'weight.dart';

class Calculation {
  final Weight hikerWeight;
  final Weight packWeight;
  final Speed hikingSpeed;
  final Terrain terrain;
  final int inclination;
  final Calories calories;
  final double kcalPerMile;
  final double kcalPerHour;

  Calculation({@required this.hikerWeight,
    @required this.calories,
    @required this.kcalPerMile,
    @required this.kcalPerHour,
    @required this.packWeight,
    @required this.hikingSpeed,
    @required this.terrain,
    @required this.inclination});

  @override
  String toString() =>
      'Calculation(hikerWeight: $hikerWeight, calories: $calories, packWeight: $packWeight, hikingSpeed: $hikingSpeed, terrain: $terrain, inclination: $inclination, kcal/mile: $kcalPerMile, kcal/hour: $kcalPerHour)';
}
