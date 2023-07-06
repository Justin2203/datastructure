class Node {
  dynamic data;
  Node? next;

  Node(this.data);
}

class Linkedlist {
  Node? head;

  void remove(int value) {
    if (head == null) {
      return;
    }

    if (head!.data == value) {
      head = head!.next;
      return;
    }

    Node? current = head;
    Node? previous;
    while (current != null) {
      if (current.data == value) {
        previous!.next = current.next;
        return;
      }
      previous = current;
      current = current.next;
    }
  }
}
