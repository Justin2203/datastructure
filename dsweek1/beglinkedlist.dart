// import 'dart:io';

// class Node {
//   dynamic data;
//   Node? next;

//   Node(this.next) {
//     next = null;
//   }
// }

// class LinkedList {
//   Node? head;
//   LinkedList() {
//     head = null;
//   }
//   void addbeg(dynamic data) {
//     Node? newNode = head;
//     newNode!.next = head;
//     head = newNode;
//   }
// }

// void main() {
//   LinkedList list = LinkedList();
//   list.addbeg(10);
//   list.addbeg(20);
//   list.addbeg(40);
//   Node? curr = list.head;
//   while (curr != null) {
//     print(curr.data);
//     curr = curr.next;
//   }
// }

class Node {
  dynamic data;
  Node? next;

  Node(this.next);
}

class LinkedList {
  Node? head;

  LinkedList() {
    head = null;
  }

  void addBeg(dynamic data) {
    {
      Node? newNode = head;
      newNode!.next = head;
      head = newNode;
    }
  }
}

void main() {
  LinkedList list = LinkedList();
  list.addBeg(12);
  list.addBeg(13);
  list.addBeg(14);
  Node? curr = list.head;
  while (curr != null) {
    print(curr.data);
    curr = curr.next;
  }
}
