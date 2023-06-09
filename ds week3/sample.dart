class Node {
  int value;
  Node? left;
  Node? right;

  Node(this.value);
}

class BinarysearchTree {
  Node? root;

  BinarysearchTree();

  int getheight(Node? node) {
    if (node == null) {
      return 0;
    }

    int leftheight = getheight(node.left);
    int rightheight = getheight(node.right);
    return 1 + (leftheight > rightheight ? leftheight : rightheight);
  }
}
