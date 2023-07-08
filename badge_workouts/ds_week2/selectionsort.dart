// void selectionsort(List<int> array) {
//   int temp = 0;
//   int n = array.length;
//   for (int i = 0; i < n - 1; i++) {
//     int min = i;
//     for (int j = i + 1; j < n; j++) {
//       if (array[j] < array[min]) {
//         min = j;
//       }
//     }
//     if (min != i) {
//       temp = array[i];
//       array[i] = array[min];
//       array[min] = temp;
//     }
//   }
// }

// void main() {
//   List<int> numbers = [5, 7, 2, 4, 9, 10];
//   print('before sorting:$numbers');
//   selectionsort(numbers);
//   print('After sorting:$numbers');
// }
// void selectionsort(List<int> array) {
//   int temp = 0;
//   int n = array.length;
//   for (int i = 0; i < n - 1; i++) {
//     int min = i;
//     for (int j = i + 1; j < n; j++) {
//       if (array[j] < array[min]) {
//         min = j;
//       }
//     }
//     if (min != i) {
//       temp = array[i];
//       array[i] = array[min];
//       array[min] = temp;
//     }
//   }
// }

// void main() {
//   List<int> numbers = [3, 2, 8, 5, 9, 10, 1];
//   print('Before sorting:$numbers');
//   selectionsort(numbers);
//   print('After sorting:$numbers');
// }

void insertionsort(List<int> array) {
  int Temp = 0;
  int n = array.length;
  for (int i = 0; i < n; i++) {
    Temp = array[i];
    int j = i - 1;
    while (j >= 0 && array[j] > Temp) {
      array[j + 1] = array[j];
      j--;
    }
    array[j + 1] = Temp;
  }
}
void main() {
  List<int> numbers = [3, 2, 8, 5, 9, 10, 1];
  print('Before sorting:$numbers');
  insertionsort(numbers);
  print('After sorting:$numbers');
}
