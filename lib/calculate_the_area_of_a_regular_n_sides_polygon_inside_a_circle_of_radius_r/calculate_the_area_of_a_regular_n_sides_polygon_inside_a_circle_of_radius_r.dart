import 'dart:math';

double areaOfPolygonInsideCircle(double r, int n) {
  /// In Euclidean geometry, a regular polygon is a polygon that is equiangular (all angles are equal in measure) and equilateral (all sides have the same length)
  /// polygon side: a = 2 * r * sin(pi / n)
  /// polugon area: S = 1 / 2 * n * r ** 2 * sin(2 * pi / n)

  // double radians(double degrees) => (degrees * pi) / 180;

  // final double polygonSide = 2 * r * sin(radians(pi / n));
  final double polygonArea = 0.5 * n * (r * r) * sin(2 * pi / n);

  return double.parse((polygonArea).toStringAsFixed(3));
}
