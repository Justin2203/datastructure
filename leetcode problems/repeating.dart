class solution {
  bool duplicate(List<int> nums) {
    for (int i = 0; i < nums.length - 1; i++) {
      for (int j = i + 1; j < nums.length; j++) {
        if (nums[i] == nums[j]) {
          return true;
        }
      }
    }
    return false;
  }
}

void main() {
  List<int> numbers = [1, 2, 3, 4, 5];
  solution obj = solution();
   bool hasDuplicates = obj.duplicate(numbers);
  print('Duplicates: $hasDuplicates');
}
