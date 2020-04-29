class Vertex {
  var data;
  var vertices;

  Vertex(this.data) : vertices = [];

  void add(Vertex node) {
    vertices.add(node);
  }
}

List dfs(Vertex vertex, [Set visited]) {
  visited ??= {vertex};
  var index = 0;

  while (vertex.vertices.isNotEmpty && index < vertex.vertices.length) {
    visited.add(vertex.vertices[index]);
    dfs(vertex.vertices[index], visited);
    index++;
  }

  return visited.toList();
}

void main() {
  var cero = Vertex(0);
  var one = Vertex(1);
  var two = Vertex(2);
  var three = Vertex(3);
  var four = Vertex(4);
  var five = Vertex(5);

  cero.vertices.add(one);
  cero.vertices.add(two);
  cero.vertices.add(three);
  two.vertices.add(four);
  three.vertices.add(four);
  four.vertices.add(five);

  var result = dfs(cero);

  for (Vertex item in result) {
    print(item.data);
  }
}
