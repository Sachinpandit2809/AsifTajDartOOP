void main() {
  var (days, min) = timeStamp(DateTime(2024, 08, 17));
  print(days);
  print(min);
}

(int, int) timeStamp(DateTime date) {
  DateTime now = DateTime.now();
  int day = now.difference(date).inDays;
  int min = now.difference(date).inMinutes;
  return (day, min);
}
