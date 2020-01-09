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
// Created Date: January 03, 2020

class Weight implements Comparable<Weight> {
  static const double _equationFactor = 2.20462262185;
  static const double _ouncesFactor = 35.274;

  // the value of weight in kg
  final double _weight;

  static const Weight zero = Weight._kg(0);

  const Weight({double kg = 0, double lbs = 0, double ounces = 0, double pounds = 0})
      : this._kg(kg +
      (lbs / _equationFactor) +
      (ounces / _ouncesFactor) +
      (_equationFactor * pounds));

  const Weight._kg(this._weight);

  double get inKG => _weight;

  double get inOunces => _weight * _ouncesFactor;

  double get inLBS => _equationFactor * _weight;

  double get inPounds => _equationFactor * _weight;

  @override
  int compareTo(Weight other) => _weight.compareTo(other._weight);

  Weight operator +(Weight other) => Weight._kg(_weight + other._weight);

  Weight operator -(Weight other) => Weight._kg(_weight - other._weight);

  Weight operator *(num factor) => Weight._kg((_weight * factor));

  Weight operator /(int quotient) {
    // By doing the check here instead of relying on '~/' below we get the
    // exception even with dart2js.
    if (quotient == 0) throw IntegerDivisionByZeroException();
    return Weight._kg(_weight / quotient);
  }

  bool operator <(Weight other) => _weight < other._weight;

  bool operator >(Weight other) => _weight > other._weight;

  bool operator <=(Weight other) => _weight <= other._weight;

  bool operator >=(Weight other) => _weight >= other._weight;

  @override
  bool operator ==(dynamic other) =>
      other is Weight && _weight == other._weight;

  @override
  int get hashCode => _weight.hashCode;

  @override
  String toString() => 'Weight(kg: $inKG, lbs: $inLBS, ounces: $inOunces)';
}
