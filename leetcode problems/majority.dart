// class Solution {
//   int majorityElement(List<int> nums) {
//     List<dynamic> num = [];

//     for (int i = 0; i < nums.length - 1; i++) {
//       int count = 0;
//       for (int j = i + 1; j < nums.length; j++) {
//         if (nums[i] == nums[j]) {
//           count++;
//           num[i] = count;
//           i++;
//         }
//       }
//     }
//     return 0;
//   }
// }

// void main() {
//   List<int> numbers = [3, 2, 3];
//   Solution obj = Solution();
//   obj.majorityElement(numbers);
// }

void main(){
  List<int> numbers = [1, 2, 3, 1, 4, 5];
  int k = numbers.length ~/ 2;
  int large = 0;
  List<int> nums = [];
  for (int i = 0; i < numbers.length ; i++) {
    int count = 0;
    for (int j = i + 1; j < numbers.length; j++) {
       
      if (numbers[i] == numbers[j]) {
        count++;
      }
    }
     nums[i] = count;
     i++;
  }
  for (int i = 0; i < nums.length ; i++) {
    if (nums[i] > large) {
      large = nums[i];
    }
    if (large > k) {
      print(k);
    }
  }
}
