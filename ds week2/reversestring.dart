 String reverse(String input) {
  List<dynamic> stack = [];
  for (int i = 0; i < stack.length-1; i++) {
    stack.add(input[i]);
  }
  String reversed = " ";
  while (stack.isNotEmpty) {
    reversed += stack.removeLast();
  }
  return reversed;
}

void main(List<String> input) {
  String input = "Justin";
  String reversed = reverse(input);
  print(reversed);
}
