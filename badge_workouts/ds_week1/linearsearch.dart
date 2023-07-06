int linearsearch(List<int> list, int target) {
  for (int i = 0; i <= list.length; i++) {
    if (list[i] == target) {
      return i;
    }
  }
  return -1;
}

void main() {
  List<int> array = [10, 34, 22, 56, 78];
  int target = 22;
  int result = linearsearch(array, target);
  if (result == -1) {
    print('element not found');
  } else {
    print('element found at position:$result');
  }
}
