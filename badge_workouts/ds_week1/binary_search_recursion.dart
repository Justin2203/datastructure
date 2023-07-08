int binarysearch(List<int> list, int target) {
  if (list.isEmpty) {
    return -1;
  }

  int mid = list.length ~/ 2;
  if (list[mid] == target) {
    return mid;
  }
  if (list[mid] <= target) {
    int result = binarysearch(list.sublist(mid + 1), target);
    return result == -1 ? -1 : mid + 1 + result;
  } else {
    return binarysearch(list.sublist(0, mid), target);
  }
}

void main() {
  List<int> list = [4, 5, 6, 7, 8];
  int target = 9;
  int result = binarysearch(list, target);
  if (result != -1) {
    print('element found at position:$result');
  } else {
    print('not found');
  }
}
