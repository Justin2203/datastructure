void selectionsort(List<int> array) {
  int temp = 0;
  int n = array.length;
  for (int i = 0; i < n-1; i++) {
    int min = i;
    for (int j = i + 1; j < n; j++) {
      if (array[j] > array[min]) {
        min = j;
      }
    }
    if (min != i) {
       temp = array[i];
      array[i] = array[min];
      array[min] = temp; 
    }
  }
}

void main() {
  List<int> numbers = [2, 8, 1, 9, 3, 7];
  print('Before sorting:$numbers');
  selectionsort(numbers);
  print('After sorting:$numbers');
}
