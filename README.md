# hiking_calories_calculator

A calculator for calculating burned calories during hiking that depends on the weight of the person, weight of the pack, type of the terrain and hiking speed.
This calculation is based on the famous [Pandolf Equation](https://academic.oup.com/milmed/article/183/9-10/e357/5025891)

## Getting started

In the `pubspec.yaml` of your flutter project, add the following dependency:

```yaml
dependencies:
  ...
  hiking_calories_calculator: "^0.0.1"
```

## Usage

`CaloriesCalculator` class has static method `calculateCalories` that can be called to calculate calories.

```dart
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
```

### Available Terrain Types:

| No | Terrain Type | Terrain Factor | Accessible code                 |
|----|--------------|----------------|---------------------------------|
| 1  | Paved Road   | 1.0            | `Terrains.PAVED_ROAD`           |
| 2  | Gravel Road  | 1.2            | `Terrains.GRAVEL_ROAD`          |
| 3  | Wet Clay/Ice | 1.7            | `Terrains.WET_CLAY_OR_ICE`      |
| 4  | Sand         | 2.0            | `Terrains.SAND`                 |
| 5  | Swamp        | 3.5            | `Terrains.SWAMP`                |

