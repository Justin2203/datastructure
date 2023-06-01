class Node {
  dynamic data;
  Node? next;

  Node(this.data);
}

class customstack {
  Node? top;

  bool get isEmpty => top == null;
  void push(dynamic data) {
    Node newNode = Node(data);
    newNode.next = top;
    top = newNode;
  }

  dynamic pop() {
    if (isEmpty) {
      print('empty');
    }
    Node? poppedNode = top;
    top = top?.next;
    poppedNode?.next = null;
    return poppedNode?.data;
  }

  dynamic peek() {
    if (isEmpty) {
      print('empty');
    }
    return top?.data;
  }

  void display() {
    Node? currentNode = top;
    while (currentNode != null) {
      print(currentNode.data);
      currentNode = currentNode.next;
    }
  }
}

void main() {
  var stack = customstack();
  stack.push(10);
  stack.push(20);
  stack.push(30);
  stack.display();
  print(stack.peek());
  
}
