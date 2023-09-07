class HashTable<K, V> {
  final int size;
  late List<List<MapEntry<K, V>>> _buckets;

  HashTable({required this.size}) {
    _buckets = List.generate(size, (_) => []);
  }

 
    int _hash(K key) {
      return key.hashCode % size;
    }   

  
  void insert(K key, V value) { 
    int bucketIndex = _hash(key);
    for (var i = 0; i < _buckets[bucketIndex].length; i++) {
      if (_buckets[bucketIndex][i].key == key) {
      
        _buckets[bucketIndex][i] = MapEntry(key, value);
        return;
      }
    }
    _buckets[bucketIndex].add(MapEntry(key, value));
  }

  V? get(K key) {
    int bucketIndex = _hash(key);
    for (var entry in _buckets[bucketIndex]) {
      if (entry.key == key) {
       
        return entry.value;
      }
    }
  
    return null;
  }

 
  void remove(K key) {
    int bucketIndex = _hash(key);
    _buckets[bucketIndex].removeWhere((entry) => entry.key == key);
  }

  
  bool containsKey(K key) {
    int bucketIndex = _hash(key);
    return _buckets[bucketIndex].any((entry) => entry.key == key);
  }

  // Clear all entries in the hash table
  void clear() {
    for (var bucket in _buckets) {
      bucket.clear();
    }
  }

  // Get the number of entries in the hash table
  int get length {
    int count = 0;
    for (var bucket in _buckets) {
      count += bucket.length;
      // count = count+ bucket.length;
    }
    return count;
  }
}

void main() {
  var table = HashTable<String, int>(size: 10);

  table.insert('apple', 5);
  table.insert('banana', 3);
  table.insert('cherry', 8);

  print(table.get('apple')); // output: 5
  print(table.get('banana')); // output: 3
  print(table.get('cherry')); // output: 8

  table.remove('banana');
  print(table.containsKey('banana')); // output: false
  print(table.length); // output: 2
}







/* --------without collision ----*/

//  class HashSample<K, V> {
//   List<MapEntry<K, V>> _buckets = [];

//   void insert(K key, V value) {
//     for (var i = 0; i < _buckets.length; i++) {
//       if (_buckets[i].key == key) {
//         _buckets[i] = MapEntry(key, value);
//         return;
//       }
//     }
//     _buckets.add(MapEntry(key, value));
//   }

//   V? get(K key) {
//     for (var i = 0; i < _buckets.length; i++) {
//       if (_buckets[i].key == key) {
//         return _buckets[i].value;
//       }
//     }
//     return null;
//   }

//   void remove(K key) {
//     for (var i = 0; i < _buckets.length; i++) {
//       if (_buckets[i].key == key) {
//         _buckets.removeAt(i);
//       }
//     }
//   }
// }

// void main() {
//   HashSample sample = HashSample();
//   sample.insert(1, 'rishad');
//   sample.insert(2, 'sarath');
//   print(sample.get(1));
//   // sample.remove(2);
//   print(sample.get(2));
// }









// ///this is with collition corrected//////

// class HashTable<K, V> {
//   final int size;
//   List<List<MapEntry<K, V>>> _buckets = [];

//   HashTable({required this.size}) {
//     _buckets = List.generate(size, (_) => []);
//   }

//   // Hash function
//   int _hash(K key) {
//     return key.hashCode % size;
//   }

//   // Insert a key-value pair
//   void insert(K key, V value) {
//     int bucketIndex = _hash(key);
//     for (var i = 0; i < _buckets[bucketIndex].length; i++) {
//       if (_buckets[bucketIndex][i].key == key) {
//         // Key already exists, update value
//         _buckets[bucketIndex][i] = MapEntry(key, value);
//         return;
//       }
//     }
//     _buckets[bucketIndex].add(MapEntry(key, value));
//   }

//   // Get the value associated with a given key
//   get(K key) {
//     int bucketIndex = _hash(key);
//     for (var entry in _buckets[bucketIndex]) {
//       if (entry.key == key) {
//         // Key found, return value
//         return entry.value;
//       }
//     }
//     // Key not found
//     return null;
//   }

//   // Remove a key-value pair
//   void remove(K key) {
//     int bucketIndex = _hash(key);
//     _buckets[bucketIndex].removeWhere((entry) => entry.key == key);
//   }

//   // Check if a key exists in the hash table
//   bool containsKey(K key) {
//     int bucketIndex = _hash(key);
//     return _buckets[bucketIndex].any((entry) => entry.key == key);
//   }

//   // Clear all entries in the hash table
//   void clear() {
//     for (var bucket in _buckets) {
//       bucket.clear();
//     }
//   }

//   // Get the number of entries in the hash table
//   int get length {
//     int count = 0;
//     for (var bucket in _buckets) {
//       count += bucket.length;
//     }
//     return count;
//   }


// }

// void main() {
//   HashTable hashTable = HashTable(size: 5);
//   hashTable.insert('name', 'rishad');
//   hashTable.insert('name', 'athul');
//   // hashTable.insert(2, 'athul');
//   // hashTable.insert(3, 'ameen');
//   // print(hashTable._buckets);
  
//   // print(hashTable.get(1));
// }
