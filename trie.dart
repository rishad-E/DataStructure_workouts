class TrieNode {
  late bool isEndOfWord;
  late Map<String, TrieNode> children;

  TrieNode() {
    isEndOfWord = false;
    children = {};
  }
}

class Trie {
  late TrieNode root;

  Trie() {
    root = TrieNode();
  }

  void printAllCharacters() {
    _printCharacters(root, "");
  }
    void _printCharacters(TrieNode node, String prefix) {
    if (node.isEndOfWord) {
      print(prefix);
    }
 
    for (var entry in node.children.entries) {
      String char = entry.key;
      TrieNode childNode = entry.value;

      _printCharacters(childNode, prefix + char);
    }
  }

  void insert(String word) {
    TrieNode node = root;
    for (int i = 0; i < word.length; i++) {
      String char = word[i];
      if (!node.children.containsKey(char)) {
        node.children[char]=TrieNode();
      }
      node = node.children[char]!;
    }
    node.isEndOfWord = true;
  }

  bool search(String word) {
    TrieNode node = root;
    for (int i = 0; i < word.length; i++) {
      String char = word[i];
      if (!node.children.containsKey(char)) {
        return false;
      }
      node = node.children[char]!;
      
    }
    return node.isEndOfWord;
  }

  // bool startsWith(String prefix) {
  //   TrieNode? node = root;
  //   for (int i = 0; i < prefix.length; i++) {
  //     String char = prefix[i];
  //     if (!node!.children.containsKey(char)) {
  //       return false;
  //     }
  //     node = node.children[char];
  //   }
  //   return true;
  // }
}

void main() {
  Trie trie = Trie();

  trie.insert('apple');
  trie.insert('application');
  trie.insert('apply');
  trie.insert('banana');

  // trie.printAllCharacters();
  // print(trie.search('apple')); // true
  // print(trie.search('ap')); // false
  // print(trie.startsWith('ap')); // true
}
