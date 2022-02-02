int josephusSurvivor(int n, int k) {
  return n > 1 ? (josephusSurvivor(n - 1, k) + k - 1) % n + 1 : 1;
}
