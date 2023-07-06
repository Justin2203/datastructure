int partition(List<int> array, int lb, int ub) {
  int temp1 = 0;
  int temp2 = 0;
  int pivot = array[lb];
  int start = lb;
  int end = ub;
  while (start < end) {
    while (array[start] <= pivot && start != end) {
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
  List<int> numbers = [5, 8, 3, 2, 6,9,1];
  print('Before sorting:$numbers');
  quicksort(numbers, 0, numbers.length - 1);
  print('After sorting:$numbers');
}
