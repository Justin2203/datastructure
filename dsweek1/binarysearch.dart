// int binary(List<int> list, int value) {
//   int low = 0;
//   int high = list.length - 1;

//   while (low <= high) {
//      int mid = (low + high) ~/ 2;
//     if (list[mid] == value) {
//       return mid;
//     } else if (list[mid] <= value) {
//       low = mid + 1;
//     } else {
//       high = mid - 1;
//     }
//   }
//   return -1;
// }

// void main() {
//   List<int> list = [10, 20, 30, 40, 50];
//   int value = 30;
//   int result = binary(list, value);
//   if (result != -1) {
//     print("Element found at position $result");
//   } else {
//     print("Element not found");
//   }
// }

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
  List<int> numbers = [10, 20, 30, 40, 50];
  int element = 50;
  int result = binarysearch(numbers, element);
  if (result == -1) {
    print("element not found");
  } else {
    print("Element found at position $result");
  }
}
