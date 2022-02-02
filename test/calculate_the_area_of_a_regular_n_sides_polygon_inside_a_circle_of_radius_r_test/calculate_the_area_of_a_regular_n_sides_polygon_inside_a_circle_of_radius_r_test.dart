import 'package:codewars_dart/calculate_the_area_of_a_regular_n_sides_polygon_inside_a_circle_of_radius_r/calculate_the_area_of_a_regular_n_sides_polygon_inside_a_circle_of_radius_r.dart';
import "package:test/test.dart";

void main() {
  void testing(double r, int n, double e) => test(
      "areaOfPolygonInsideCircle($r, $n)",
      () => expect(areaOfPolygonInsideCircle(r, n), equals(e)));
  group('Basic tests', () {
    testing(3, 3, 11.691);
    testing(2, 4, 8);
    testing(2.5, 5, 14.86);
  });
}
