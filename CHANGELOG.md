## [0.1.2] - January 06, 2020

* Add support for creating `Distance` instances using `metres` unit.

```dart
    final distance = Distance(metres: 500);
```

## [0.1.1] - January 06, 2020

* Code Refactor
* minor bug fixes

## [0.1.0] - January 06, 2020

* Code Refactor
* Add `toString` methods to missing classes

## [0.0.1] - January 06, 2020

* Support for calculating metabolic rate
* Support for calculating calories burned for given weight of the user, weight of the pack, hiking speed, inclination and terrain factor.
* Supported Weight Units: `KG`, `Ounces`, `Pounds(LBS)`
* Supported Speed Units: `km/h`, `miles/hour`, `m/s`, `knots`
* Supported Distance Units: `km`, `miles`, `yards`, `inches`, `ft`
* Supported Energy Consumption Units: `Watts`, `cal/hour`, `cal/min`, `cal/second`, `kcal/hour`, `kcal/min`, `kcal/second`, `kcal/mile`
* Supported Terrain Types: `Paved Road`, `Gravel Road`, `Wet Clay/Ice`, `Sand`, `Swamp`
