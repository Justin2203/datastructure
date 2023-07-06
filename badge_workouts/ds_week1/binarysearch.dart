int binarysearch(List<int> list, int value) {
  int low = 0;
  int high = list.length - 1;
  while (low <= high) {
    int mid = (low + high) ~/ 2;
    if (list[mid] == value) {
      return mid;
    } else if (list[mid] <= value) {
      low = mid + 1;
    } else {
      high = mid - 1;
    }
  }
  return -1;
}

void main() {
  List<int> numbers = [10, 45, 22, 34, 54, 78, 66];
  int target = 54;
  int result = binarysearch(numbers, target);
  if (result == -1) {
    print('element not found');
  } else {
    print('element found at position:$result');
  }
}
