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

  void insert(String word) {
    TrieNode node = root;
    for (var i = 0; i < word.length; i++) {
      String char = word[i];
      if (!node.children.containsKey(char)) {
        node.children[char] = TrieNode();
      }
      node = node.children[char]!;
    }
    node.isEndOfWord = true;
  }

  bool search(String word) {
    TrieNode node = root;
    for (var i = 0; i < word.length; i++) {
      String char = word[i];
      if (!node.children.containsKey(char)) {
        return false;
      }
      
      node = node.children[char]!;
    }
    return node.isEndOfWord = true;
  }
}

void main(){
  Trie t = Trie();
  t.insert('word');
  t.insert('rishad');
  print(t.search('word'));
}