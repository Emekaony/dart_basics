void main() {
  List<int> one = [1, 2, 4, 6, 7];
  print(binarySearch(one, 2));
  print(binarySearch(one, 1));
  print(binarySearch(one, 4));
  print(binarySearch(one, 33));
  print(binarySearch(one, 6));
}

int binarySearch(List<int> nums, int target) {
  int idx = -1;
  int start = 0;
  int end = nums.length - 1;

  while (start <= end) {
    int mid = (start + end) ~/ 2;
    int curr = nums[mid];
    if (curr == target) {
      idx = mid;
      break;
    } else if (curr > target) {
      end = mid - 1;
    } else if (curr < target) {
      start = mid + 1;
    }
  }
  return idx;
}
