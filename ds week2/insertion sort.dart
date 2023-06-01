void insertionsort(List<int> array) {
  int Temp = 0;
  int n = array.length;
  for (int i = 1; i < n; i++) {
    Temp=array[i];
    int j = i - 1;
    while (j >= 0 && array[j] > Temp) {
      array[j + 1] = array[j];
      j--;
    }
    array[j + 1] = Temp;
  }
}

void main() {
  List<int> numbers = [6, 2, 9, 10, 2, 5, 3];
  print('Before sorting:$numbers');
  insertionsort(numbers);
  print('After sorting:$numbers');
}
