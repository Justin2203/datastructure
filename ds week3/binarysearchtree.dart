// class Node {
//   int data;
//   Node? left;
//   Node? right;

//   Node(this.data);
// }

// class BinarySearchTree {
//   Node? root;
//   BinarySearchTree();

//   void insert(int data) {
//     Node newNode = Node(data);

//     if (root == null) {
//       root = newNode;
//     } else {
//       Node? current = root;

//       while (true) {
//         if (data < current!.data) {
//           if (current.left == null) {
//             current.left = newNode;
//             break;
//           }
//           current = current.left;
//         } else {
//           if (current.right == null) {
//             current.right = newNode;
//             break;
//           }
//           current = current.right;
//         }
//       }
//     }
//   }

//   bool contains(int data) {
//     Node? current = root;

//     while (current != null) {
//       if (data == current.data) {
//         return true;
//       } else if (data < current.data) {
//         current = current.left;
//       } else {
//         current = current.right;
//       }
//     }

//     return false;
//   }
// }

// void main() {
//   BinarySearchTree bst = BinarySearchTree();
//   bst.insert(10);
//   bst.insert(6);
//   bst.insert(15);
//   bst.insert(17);
//   bst.insert(20);
//   bst.insert(11);
//   bst.insert(18);

//   print(bst.contains(6));
//   print(bst.contains(1));
// }

class Node {
  int data;
  Node? left;
  Node? right;

  Node(this.data);
}

class BinarySearchTree {
  Node? root;

//  BinarySearchTree();

  void insert(int data) {
    Node newNode = Node(data);
    if (root == null) {
      root = newNode;
    } else {
      Node? current = root;

      while (true) {
        if (data < current!.data) {
          if (current.left == null) {
            current.left = newNode;
            break;
          }
          current = current.left;
        } else {
          if (current.right == null) {
            current.right = newNode;
            break;
          }
          current = current.right;
        }
      }
    }
  }

  bool search(int data) {
    Node? current = root;

    while (current != null) {
      if (data == current.data) {
        return true;
      } else if (data < current.data) {
        current = current.left;
      } else {
        current = current.right;
      }
    }
    return false;
  }

    bool isBSTUtil(Node? node, int minValue, int maxValue) {
    if (node == null) {
      return true;
    }

    if (node.data < minValue || node.data > maxValue) {
      return false;
    }

    return isBSTUtil(node.left, minValue, node.data - 1) &&
        isBSTUtil(node.right, node.data + 1, maxValue);
  }
  bool isValidBST() {
    return isBSTUtil(root, 0, 20);
  }

  void preorder(Node? node) {
    if (node != null) {
      print(node.data);
      preorder(node.left);
      preorder(node.right);
    }
  }

  void inorder(Node? node) {
    if (node != null) {
      inorder(node.left);
      print(node.data);
      inorder(node.right);
    }
  }

  void postorder(Node? node) {
    if (node != null) {
      postorder(node.left);
      postorder(node.right);
      print(node.data);
    }
  }
}

void main() {
  var bst = BinarySearchTree();
  bst.insert(14);
  bst.insert(28);
  print(bst.search(1));
  print(bst.search(14));

  print('pre-order traversal:');
  bst.preorder(bst.root);

  print('in-order traversal:');
  bst.inorder(bst.root);

  print('post-order traversal:');
  bst.postorder(bst.root);
  
}
