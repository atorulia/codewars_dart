int dblLinear(int n) {
  List<int> u = [1];
  int x = 0, y = 0;

  for (var i = 0; i < n; i++) {
    var nextX = 2 * u[x] + 1;
    var nextY = 3 * u[y] + 1;

    if (nextX <= nextY) {
      u.add(nextX);
      x++;
      if (nextX == nextY) y++;
    } else {
      u.add(nextY);
      y++;
    }
  }

  return u[n];
}
