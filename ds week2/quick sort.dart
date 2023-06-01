int partition(List<int> array, int lb, int ub) {
  int temp1 = 0;
  int temp2 = 0;
  int pivot = array[lb];
  int start = lb;
  int end = ub;
  while (start < end) {
    while (array[start] <= pivot) {
      start++;
    }
    while (array[end] > pivot) {
      end--;
    }
    if (start < end) {
      temp1 = array[start];
      array[start] = array[end];
      array[end] = temp1;
    }
  }
  temp2 = array[lb];
  array[lb] = array[end];
  array[end] = temp2;
  return end;
}

void quicksort(List<int> array, int lb, int ub) {
  if (lb < ub) {
    int loc = partition(array, lb, ub);
    quicksort(array, lb, loc - 1);
    quicksort(array, loc + 1, ub);
  }
}

void main() {
  List<int> numbers = [7,6,10,5,9,2,1,15];
  print('Before sorting:$numbers');
  quicksort(numbers,0,7);
  print('After sorting:$numbers');
}
