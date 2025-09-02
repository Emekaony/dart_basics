// this is my custom implementation of the where array method
List<T> where<T>(List<T> items, bool Function(T) f) {
  List<T> results = [];
  for (var item in items) {
    if (f(item)) {
      results.add(item);
    }
  }
  return results;
}
