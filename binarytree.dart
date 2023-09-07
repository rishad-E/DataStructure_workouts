// //------------------validation of BST--------------//

// class TreeNode {
//   int val;
//   TreeNode? left;
//   TreeNode? right;

//   TreeNode(this.val, this.left, this.right);
// }

// bool isValidBST(TreeNode root) {
//   return isValidBSTHelper(root, null, null);
// }

// bool isValidBSTHelper(TreeNode? node, int? minVal, int? maxVal) {
//   if (node == null) {
//     return true;
//   }

//   if ((minVal != null && node.val <= minVal) || (maxVal != null && node.val >= maxVal)) {
//     return false;
//   }

//   return isValidBSTHelper(node.left, minVal, node.val) &&
//          isValidBSTHelper(node.right, node.val, maxVal);
// }

// // Example usage
// void main() {
//   TreeNode root = TreeNode(4,
//     TreeNode(2, TreeNode(1, null, null), TreeNode(3, null, null)),
//     TreeNode(7, TreeNode(6, null, null), TreeNode(9, null, null))
//   );

//   bool isBST = isValidBST(root);
//   print("Is it a valid BST? $isBST"); // prints "Is it a valid BST? true"
// }
// class Node {
//   int value;
//   Node? left;
//   Node? right;

//   Node(this.value);
// }

// bool isBST(Node? root, int? minVal, int? maxVal) {
//   if (root == null) {
//     return true;
//   }

//   if ((minVal != null && root.value <= minVal) || (maxVal != null && root.value >= maxVal)) {
//     return false;
//   }

//   return isBST(root.left, minVal, root.value) && isBST(root.right, root.value, maxVal);
// }
// void main() {
//   Node root = Node(4);
//   root.left = Node(2);
//   root.right = Node(5);
//   root.left!.left = Node(1);
//   root.left!.right = Node(3);

//   bool isbST = isBST(root, null, null);
//   print(isbST); // true
// }

class Node {
  int data;
  Node? left;
  Node? right;

  Node(this.data);
}

isBST(Node? node, int? min, int? max) {
  if (node == null) {
    return true;
  }

  if (min != null && node.data <= min || max != null && node.data >= max) {
    return false;
  }

  return isBST(node.left, min, node.data) && isBST(node.right, node.data, max);
}

void main() {
  Node root = Node(4);
  root.left = Node(2);
  root.right = Node(5);
  root.left!.left = Node(1);
  root.left!.right = Node(3);
  print(isBST(root, null, null));
}
