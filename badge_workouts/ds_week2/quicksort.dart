// int partition(List<int> array, int lb, int ub) {
//   int start = lb;
//   int pivot = array[start];
//   int end = ub;
//   int temp = 0;

//   while (start < end) {
//     while (array[start] <= pivot && start != end) {
//       start++;
//     }
//     while (array[end] > pivot) {
//       end--;
//     }
//     if (start < end) {
//       temp = array[start];
//       array[start] = array[end];
//       array[end] = temp;
//     }
//   }
//   temp = array[lb];
//   array[lb] = array[end];
//   array[end] = temp;
//   return end;
// }

// void quicksort(List<int> array, int lb, int ub) {
//   if (lb < ub) {
//     int loc = partition(array, lb, ub);
//     quicksort(array, loc + 1, ub);
//     quicksort(array, lb, loc - 1);
//   }
// }

// void main() {
//   List<int> numbers = [5, 33, 22, 15, 67, 35, 90];
//   print('Before sorting:$numbers');
//   quicksort(numbers, 0, numbers.length - 1);
//   print('After sorting:$numbers');
// }

// int partition(List<int> array, int lb, int ub) {
//   int temp = 0;
//   int start = lb;
//   int pivot = array[lb];
//   int end = ub;

//   while (start < end) {
//     while (array[start] <= pivot && start != end) {
//       start++;
//     }
//     while (array[end] > pivot) {
//       end--;
//     }
//     if (start < end) {
//       temp = array[start];
//       array[start] = array[end];
//       array[end] = temp;
//     }
//   }
//   temp = array[lb];
//   array[lb] = array[end];
//   array[end] = temp;
//   return end;
// }

// void quicksort(List<int> array, int lb, int ub) {
//   if (lb < ub) {
//     int loc = partition(array, lb, ub);
//     quicksort(array, loc + 1, ub);
//     quicksort(array, lb, loc - 1);
//   }
// }
// void main() {
//   List<int> numbers = [5, 33, 22, 15, 67, 35, 90];
//   print('Before sorting:$numbers');
//   quicksort(numbers, 0, numbers.length - 1);
//   print('After sorting:$numbers');
// }

int partition(List<int> array, int lb, int ub) {
  int temp = 0;
  int start = lb;
  int pivot = array[start];
  int end = ub;

  while (start < end) {
    while (array[start] <= pivot && start != end) {
      start++;
    }
    while (array[end] > pivot) {
      end--;
    }
    if (start < end) {
      temp = array[start];
      array[start] = array[end];
      array[end] = temp;
    }
  }
  temp = array[lb];
  array[lb] = array[end];
  array[end] = temp;
  return end;
}

void quicksort(List<int> array, int lb, int ub) {
  if (lb < ub) {
    int loc = partition(array, lb, ub);
    quicksort(array, loc + 1, ub);
    quicksort(array, lb, loc - 1);
  }
}

void main() {
  List<int> numbers = [6, 4, 7, 2, 9, 1, 89];
  print('Before sorting:$numbers');
  quicksort(numbers, 0, numbers.length - 1);
  print('After sorting:$numbers');
}
