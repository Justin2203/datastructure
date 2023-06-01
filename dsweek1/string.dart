// String reverseString(String input) {
//   String reversedString = '';
//   for (int i = input.length - 1; i >= 0; i--) {
//     reversedString = reversedString+input[i];
//   }
//   return reversedString;
// }
// void main() {
//   String originalString = 'Justin Thomas';
//   String reversedString = reverseString(originalString);
//   print(reversedString);
// }

String reverseString(String input) {
  String reversedstring = '';

  for (int i = input.length; i > 0; i++) {
    reversedstring = reversedstring + input[i];
  }
  return reversedstring;
}

void main() {
  String originalstring = 'Justin Thomas';
  String reversedstring = reverseString(originalstring);
  print(reversedstring);
}
