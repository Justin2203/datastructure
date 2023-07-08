// void mergesort(List<int> array, int lb, int ub) {
//   if (lb < ub) {
//     int mid = (lb + ub) ~/ 2;
//     mergesort(array, mid + 1, ub);
//     mergesort(array, lb, mid);
//     merge(array, lb, mid, ub);
//   }
// }

// void merge(List<int> array, int lb, int mid, int ub) {
//   int i = lb;
//   int j = mid + 1;
//   int k = lb;

//   List<int> array1 = List.filled(ub + 1, 0);

//   while (i <= mid && j <= ub) {
//     if (array[i] < array1[j]) {
//       array1[k] = array[i];
//       i++;
//     } else {
//       array1[k] = array[j];
//       j++;
//     }
//     k++;
//   }
//   while (i <= mid) {
//     array1[k] = array[i];
//     i++;
//     k++;
//   }
//   while (j <= ub) {
//     array1[k] = array[j];
//     j++;
//     k++;
//   }
//   for (int x = 0; x < array.length; x++) {
//     array[x] = array1[x];
//   }
// }

import '../../ds week2/merge_sort.dart';

void mergesort(List<int> array, int lb, int ub) {
  if (lb < ub) {
    int mid = (lb + ub) ~/ 2;
    mergesort(array, mid + 1, ub);
    mergesort(array, lb, mid);
    merge(array, lb, mid, ub);
  }
}

void merge(List<int> array, int lb, int ub, int mid) {
  int i = lb;
  int j = mid + 1;
  int k = lb;

  List<int> array1 = List.filled(ub + 1, 0);
  while (i <= mid && j <= ub) {
    if (array[i] < array1[j]) {
      array1[k] = array[i];
      i++;
    } else {
      array1[k] = array[j];
      j++;
    }
    k++;
  }
  while (i <= mid) {
    array1[k] = array[i];
    i++;
    k++;
  }
  while (j <= ub) {
    array1[k] = array[j];
    j++;
    k++;
  }
  for (int x = 0; x < array.length - 1; x++) {
    array[x] = array1[x];
  }
}

void main() {
  List<int> numbers = [4, 7, 2, 4, 9, 6];
  print('Before sorting:$numbers');
  mergeSort(numbers, 0, numbers.length - 1);
  print('After sorting:$numbers');
}
