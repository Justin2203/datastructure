String reversestring(String input) {
  String reversedstring = '';
  for (int i=input.length-1; i >= 0; i--) {
    reversedstring = reversedstring + input[i];
  }
  return reversedstring;
}

void main() {
  String OriginalString = 'Justin Thomas';
  String reverse = reversestring(OriginalString);
  print(reverse);
}
