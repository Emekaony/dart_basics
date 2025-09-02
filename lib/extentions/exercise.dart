// Implement a rangrTo int extention
extension on int {
  List<int> rangeTo(int end) {
    if (end < this) return <int>[];
    List<int> res = <int>[];
    for (int i = this; i <= end; i++) {
      res.add(i);
    }
    return res;
  }
}

void main() {
  List<int> res = 4.rangeTo(10);
  print(res);
}
