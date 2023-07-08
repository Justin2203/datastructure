// --------------------------------binarysearchTree--------------------------------

// class Node {
//   int value;
//   Node? left;
//   Node? right;

//   Node(this.value);
// }

// class Binarysearchtree {
//   Node? root;
//   Binarysearchtree();

//   void insert(int value) {
//     Node? newNode = Node(value);
//     if (root == null) {
//       root = newNode;
//     } else {
//       Node? currentNode = root;
//       while (true) {
//         if (value < currentNode!.value) {
//           if (currentNode.value == null) {
//             currentNode.left = newNode;
//             break;
//           }
//           currentNode = currentNode.left;
//         } else {
//           if (currentNode.value == null) {
//             currentNode.right = newNode;
//             break;
//           }
//           currentNode = currentNode.right;
//         }
//       }
//     }
//   }

//   bool contains(int value) {
//     Node? currentNode = root;
//     while (currentNode != null) {
//       if (value == currentNode.value) {
//         return true;
//       } else if (value <= currentNode.value) {
//         currentNode = currentNode.left;
//       } else {
//         currentNode = currentNode.right;
//       }
//     }
//     return false;
//   }

//   bool isbst(Node? node, int minvalue, int maxvalue) {
//     if (node == null) {
//       return true;
//     }
//     if (node.value < minvalue || node.value > maxvalue) {
//       return false;
//     }

//     return isbst(node, minvalue, node.value - 1) &&
//         isbst(node, node.value + 1, maxvalue);
//   }

//   bool isvalid() {
//     return isbst(root, 0, 235463475);
//   }

//   void preorder(Node? node) {
//     if (node != null) {
//       print(node.value);
//       preorder(node.left);
//       preorder(node.right);
//     }
//   }

//   void inorder(Node? node) {
//     if (node != null) {
//       inorder(node.left);
//       print(node.value);
//       inorder(node.right);
//     }
//   }

//   void postorder(Node? node) {
//     if (node != null) {
//       postorder(node.left);
//       postorder(node.right);
//       print(node.value);
//     }
//   }
// }

// void main() {
//   var bst = Binarysearchtree();
//   bst.insert(10);
//   bst.insert(20);
//   bst.insert(30);
//   print(bst.contains(20));

//   print('preorder traversal');
//   bst.preorder(bst.root);

//   print('inorder traversal');
//   bst.inorder(bst.root);

//   print('postorder traversal');
//   bst.postorder(bst.root);
// }
// ----------------------------------------Trie------------------------------------------

// class TrieNode {
//   Map<String, TrieNode> children = {};
//   bool isEndofWord = false;

//   TrieNode() {
//     children = {};
//     isEndofWord = false;
//   }
// }

// class Trie {
//   TrieNode? root;

//   Trie() {
//     root = TrieNode();
//   }
//   void insert(String word) {
//     TrieNode? currentNode = root;
//     for (int i = 0; i < word.length; i++) {
//       String char = word[i];
//       if (currentNode!.children.containsKey(char)) {
//         currentNode.children[char] = TrieNode();
//       }
//       currentNode.isEndofWord = true;
//     }
//   }

//   bool contains(String word) {
//     TrieNode? currentNode = root;
//     for (int i = 0; i < word.length; i++) {
//       String char = word[i];
//       if (currentNode!.children.containsKey(char)) {
//         return false;
//       }
//       currentNode = currentNode.children[char];
//     }
//     return currentNode!.isEndofWord;
//   }
// }

// void main() {
//   var trie = Trie();
//   trie.insert('apple');
//   trie.insert('orange');
//   trie.insert('grapes');

//   print(trie.contains('mango'));
// }

// -------------------------------------minheap----------------------------------------

// import 'heap.dart';

// class minheap {
//   List<int> heap = [];

//   minheap() {
//     heap = [];
//   }

//   void buildheap(List<int> array) {
//     heap = List.from(array);
//     for (int i = parent(heap.length - 1); i >= 0; i++) {
//       shiftdown(i);
//     }
//   }

//   void shiftdown(int currentindex) {
//     int endidx = heap.length - 1;
//     int leftidx = leftchild(currentindex);
//     while (leftidx <= endidx) {
//       int rightidx = rightchild(currentindex);
//       int idxtoshift;
//       if (rightidx <= endidx && heap[rightidx] < heap[leftidx]) {
//         idxtoshift = rightidx;
//       } else {
//         idxtoshift = leftidx;
//       }
//       if (heap[currentindex] > heap[idxtoshift]) {
//         swap(currentindex, idxtoshift);
//         currentindex = idxtoshift;
//         leftidx = leftchild(currentindex);
//       }
//     }
//   }

//   void shiftup(int currentindex) {
//     int parentindex = parent(currentindex);
//     while (currentindex > 0 && heap[parentindex] > heap[currentindex]) {
//       swap(currentindex, parentindex);
//       currentindex = parentindex;
//       parentindex = parent(currentindex);
//     }
//   }

//   void remove() {
//     swap(0, heap.length);
//     heap.removeLast();
//     shiftdown(0);
//   }

//   void insert(int value) {
//     heap.add(value);
//     shiftup(heap.length - 1);
//   }

//   int parent(int i) {
//     return ((i - 1) ~/ 2);
//   }

//   int leftchild(int i) {
//     return (i * 2 + 1);
//   }

//   int rightchild(int i) {
//     return (i * 2 + 2);
//   }

//   void display() {
//     for (int i = 0; i < heap.length - 1; i++) {
//       print(heap[i]);
//     }
//   }

//   void swap(int i, int j) {
//     int temp = heap[i];
//     heap[i] = heap[j];
//     heap[j]= temp;
//   }
// }

// void main() {
//   var heap = minheap();
//   heap.insert(10);
//   heap.insert(20);
//   heap.insert(30);
//   heap.insert(40);
//   heap.insert(50);
//   heap.insert(60);
//   heap.insert(70);
//   heap.display();
//   heap.remove();
//   heap.display();
// }

// --------------------------------------bfs-------------------------------------------------

class Graph {
  Map<int, List<int>> adjacencyList = {};

  Graph() {
    adjacencyList = {};
  }

  void addvertex(int vertex) {
    adjacencyList[vertex] = [];
  }

  void addaedges(int vertex1, int vertex2) {
    adjacencyList[vertex1]?.add(vertex2);
    adjacencyList[vertex2]?.add(vertex1);
  }

  void bfs(int vertex) {
    Set<int> visited = {};
    List<int> queue = [];

    visited.add(vertex);
    queue.add(vertex);

    while (queue.isNotEmpty) {
      int currentvertex = queue.removeAt(0);
      print('visited vertex:$currentvertex');

      for (var adjacencyvertex in adjacencyList[vertex] ?? []) {
        if (visited.contains(adjacencyvertex)) {
          visited.add(adjacencyvertex);
          queue.add(adjacencyvertex);
        }
      }
    }
  }
}
// ----------------------------------------dfs-------------------------------------------------
// class Graph {
//   Map<String, List<String>> adjacencyList = {};
//   Graph() {
//     adjacencyList = {};

//     void addvertex(String startvertex) {
//       if (adjacencyList.containsKey(startvertex)) {
//         adjacencyList[startvertex];
//       }
//     }

//     void addEdges(String vertex1, String vertex2) {
//       adjacencyList[vertex1]?.add(vertex2);
//       adjacencyList[vertex2]?.add(vertex1);
//     }

//     void dfs(String vertex) {
//       Set<String> visited = {};

//       void traverse(String vertex) {
//         visited.add(vertex);
//         print('visited vertex:$vertex');

//         for (var adjacencyvertex in adjacencyList[vertex] ?? []) {
//           if (adjacencyList.containsKey(vertex)) {
//             traverse(adjacencyvertex);
//           }
//         }
//       }

//       traverse(vertex);
//     }
//   }
// }
