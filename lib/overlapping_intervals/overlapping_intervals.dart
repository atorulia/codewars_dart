int sumOfIntervals(List<List<int>> intervals) {
  List<List<int>> intervalsList = intervals;

  intervalsList.sort((a, b) => a.first.compareTo(b.first));

  int rightPoint = intervalsList[0].first, res = 0;

  for (List<int> interval in intervalsList) {
    if (interval.last >= rightPoint) {
      res += interval.last -
          (interval.first > rightPoint ? interval.first : rightPoint);
      rightPoint = interval.last;
    }
  }

  return res;
}
