class Graph {
  late Map<String, List<String>> _adjacencyList;

  Graph() {
    _adjacencyList = {};
  }

  void addVertex(String vertex) {
    if (!_adjacencyList.containsKey(vertex)) {
      _adjacencyList[vertex] = [];
    }
  }

  void addEdge(String vertex1, String vertex2) {
    addVertex(vertex1);
    addVertex(vertex2);
    _adjacencyList[vertex1]!.add(vertex2);
    _adjacencyList[vertex2]!.add(vertex1);
  }

  void printGraph() {
    _adjacencyList.forEach((vertex, neighbors) {
      print('$vertex: ${neighbors.join(', ')}');
    });
  }
  void bfs(String startVertex) {
    Set<String> visited = {};
    List<String> queue = [];

    visited.add(startVertex);
    queue.add(startVertex);

    while (queue.isNotEmpty) {
      String currentVertex = queue.removeAt(0);
      print(currentVertex);

      List<String>? neighbors = _adjacencyList[currentVertex];
      if (neighbors != null) {
        for (String neighbor in neighbors) {
          if (!visited.contains(neighbor)) {
            visited.add(neighbor);
            queue.add(neighbor);
          }
        }
      }
    }
  }

  void dfs(String startVertex) {
    Set<String> visited = {};

    void traverse(String vertex) {
      visited.add(vertex);
      print(vertex);

      List<String>? neighbors = _adjacencyList[vertex];
      if (neighbors != null) {
        for (String neighbor in neighbors) {
          if (!visited.contains(neighbor)) {
            traverse(neighbor);
          }
        }
      }
    }

    traverse(startVertex);
  }
}
void main() {
  Graph g = Graph();

  g.addEdge('A', 'B');
  g.addEdge('A', 'C');
  // g.addEdge('B', 'D'); 
  // g.addEdge('C', 'D');
  // g.addEdge('C', 'E');

  g.printGraph();
}

