// class Node {
//   dynamic data;
//   Node? next;

//   Node(this.data);
// }

// NodeArrayToLinkedList(List<int> array) {
//   if (array.isEmpty) {
//     return null;
//   }
//   Node? head = Node(array[0]);
//   Node? current = head;

//   for (int i = 0; i <= array.length-1; i++) {
//     current!.next = Node(array[i]);
//     current = current.next;
//   }

//   return head;
// }

// void main() {
//   List<int> array = [1, 2, 3, 4, 5, 6, 7];
//   Node? head = NodeArrayToLinkedList(array);
//   Node? current = head;
//   while (current != null) {
//     print(current.data);
//     current = current.next;
//   }
// }

class Node {
  dynamic data;
  Node? next;

  Node(this.data);
}

NodeArrayToLinkedList(List<int> array) {
  if (array.isEmpty) {
    return null;
  }

  Node? head = Node(array[0]);
  Node? current = head;

  for (int i = 0; i <= array.length - 1; i++) {
    current!.next = Node(array[i]);
    current = current.next;
  }

  return head;
}

void main() {
  List<int> array = [1, 2, 3, 4, 5, 6];
  Node? current = NodeArrayToLinkedList(array);
  while (current != null) {
    print(current.data);
    current = current.next;
  }
}
