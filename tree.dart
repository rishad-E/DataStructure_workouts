class Node {
  int data;
  Node? left;
  Node? right;

  Node(this.data);
}

class BinaryTree {
  Node? root;

  // Insertion operation
  void insert(int data) {
    Node newNode = Node(data);
    if (root == null) {
      root = newNode;
      return;
    }
    Node? currentNode = root;
    while (true) {
      if (data < currentNode!.data) {
        if (currentNode.left == null) {
          currentNode.left = newNode;
          // return;
          break;
        }
        currentNode = currentNode.left;
      } else {
        if (currentNode.right == null) {
          currentNode.right = newNode;
          // return;
          break;
        }
        currentNode = currentNode.right;
      }
    }
  }

  // In-order traversal operation
  void inorderTraversal(Node? node) {
    if (node != null) {
      inorderTraversal(node.left);
      print(node.data);
      inorderTraversal(node.right);
    }
  }

  // Pre-order traversal operation
  void preorderTraversal(Node? node) {
    if (node != null) {
      print(node.data);
      preorderTraversal(node.left);
      preorderTraversal(node.right);
    }
  }

  // Post-order traversal operation
  void postorderTraversal(Node? node) {
    if (node != null) {
      postorderTraversal(node.left);
      postorderTraversal(node.right);
      print(node.data);
    }
  }

  // Deletion operation
  void delete(int data) {
    root = deleteNode(root, data);
  }

  Node? deleteNode(Node? node, int data) {
    if (node == null) {
      return null;
    }
    if (data < node.data) {
      node.left = deleteNode(node.left, data);
    } else if (data > node.data) {
      node.right = deleteNode(node.right, data);
    } else {
      if (node.left == null && node.right == null) {
        node = null;
      } else if (node.left == null) {
        node = node.right;
      } else if (node.right == null) {
        node = node.left;
      } else {
        Node temp = findMinNode(node.right)!;
        node.data = temp.data;
        node.right = deleteNode(node.right, temp.data);
      }
    }
    return node;
  }

  Node? findMinNode(Node? node) {
    while (node?.left != null) {
      node = node?.left;
    }
    return node;
  }
}

void main() {
  BinaryTree tree = BinaryTree();

  tree.insert(5);
  tree.insert(3);
  tree.insert(7);
  tree.insert(1);
  tree.insert(4);
  tree.insert(6);
  tree.insert(8);

  print("In-order traversal:");
  tree.inorderTraversal(tree.root);

  // print("\nPre-order traversal:");
  // tree.preorderTraversal(tree.root);

  // print("\nPost-order traversal:");
  // tree.postorderTraversal(tree.root);

  // tree.delete(5);

  // print("\nIn-order traversal after deletion:");
  // tree.inorderTraversal(tree.root);
}
