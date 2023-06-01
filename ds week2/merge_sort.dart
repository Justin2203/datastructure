

void mergeSort(List<int> a, int lb, int ub) {
  if (lb < ub) {
    int mid = ((lb + ub) ~/ 2);
    mergeSort(a, lb, mid);
    mergeSort(a, mid + 1, ub);
    merge(a, lb, mid, ub);
  }
}

void merge(List<int> a, int lb, int mid, int ub) {
  int i = lb;
  int j = mid + 1;
  int k = lb;
  List<int> b = List<int>.filled(ub + 1, 0);

  while (i <= mid && j <= ub) {
    if (a[i] < a[j]) {
      b[k] = a[i];
      i++;
    } else {
      b[k] = a[j];
      j++;
    }
    k++;
  }

  while (i <= mid) {
    b[k] = a[i];
    i++;
    k++;
  }

  while (j <= ub) {
    b[k] = a[j];
    j++;
    k++;
  }

  for (int x = lb; x <= ub; x++) {
    a[x] = b[x];
  }
}

void main() {
  List<int>numbers = [23, 43, 54, 756, 67, 2, 5, 8, 6];
  int lb = 0;
  int ub = numbers.length - 1;
  print('Before sorting:$numbers');
  mergeSort(numbers, lb, ub);
  print('After sorting:$numbers');
}
