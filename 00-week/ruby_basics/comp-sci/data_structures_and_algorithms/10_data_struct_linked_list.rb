# Linked List
# ===========

# Linked List, ruby's missing data structure
# https://www.sitepoint.com/rubys-missing-data-structure/

# Key points
# ----------
# Array#unshift
# Ruby's memory allocation for arrays
# Ruby's copy on write optimization

# Graph
# =====
# e.g. Social media connections graph:
# (1) John Doe --------- (5) Mary Jane
#   |   \
#   |    \
#   |   (2) Martin Nyaga
#   |          \
#   |           \
#   |            \
#   |             \
# (3) Jane Doe --- (4) Peter Dane

# Represented as an edge list
# i.e. List of arrays representing connections between vertices
graph_edge_list =
    [
        [1,5],
        [1,2],
        [1,3],
        [3,4],
        [2,4]
    ]

# Represented as an adjacency matrix
# i.e. matrix with 1s in positions showing adjacent vertices
graph_adjacency_matrix =
    [
        [0, 1, 1, 0, 1],
        [1, 0, 0, 1, 0],
        [1, 0, 0, 1, 0],
        [0, 1, 1, 0, 0],
        [1, 0, 0, 0, 0]
    ]

# Represented as Adjacency list
# i.e. list of all vertices, each with a list of its adjacent vertices
graph_adjacency_list =
    {
        1 => [2, 3, 5],
        2 => [1, 4],
        3 => [1, 4],
        4 => [2, 3],
        5 => [1]
    }

# - Graph class that takes in a list of edges and
#   builds an  internal adjacency list
# - Supports adding and removing edges
# - Uses a breadth first search to find the shortest path between elements
#   shortest path algorithm
# - Still could use a lot of optimisations, and does not cover a lot of the more
#   complicated things that graphs can be used for, but this works as a fundamental representation


# See Khan Academy Algorithms Course for full explanation and implementation in javascript
# https://www.khanacademy.org/computing/computer-science/algorithms/

class Graph
  attr_accessor :adjacency_list

  def initialize edges
    @adjacency_list = {}

    edges.each do |edge|
      add_edge edge
    end
  end

  def add_edge edge
    @adjacency_list[edge[0]] ||= []
    @adjacency_list[edge[0]].push(edge[1])

    @adjacency_list[edge[1]] ||= []
    @adjacency_list[edge[1]].push(edge[0])
  end

  def remove_edge edge
    @adjacency_list[edge[0]] ||= []
    @adjacency_list[edge[0]].delete(edge[1])

    @adjacency_list[edge[1]] ||= []
    @adjacency_list[edge[1]].delete(edge[0])
  end

  def shortest_path_between source, target
    bfs_info = perform_bfs(source)
    current_target = target
    path = [target]

    while bfs_info[target][:predecessor] != source
      return [] if bfs_info[target][:predecessor] == nil
      path.push bfs_info[target][:predecessor]
      target = bfs_info[target][:predecessor]
    end

    path.push source
    return path.reverse.join(" -> ")
  end

  def perform_bfs source
    bfs_info = {}

    @adjacency_list.each do |k, v|
      bfs_info[k] = { distance: nil, predecessor: nil }
    end

    bfs_info[source][:distance] = 0

    queue = Queue.new
    queue.enqueue source

    while !queue.empty?
      current_item = queue.dequeue

      @adjacency_list[current_item].each do |item|
        next if bfs_info[item][:distance] != nil
        bfs_info[item][:predecessor] = current_item
        bfs_info[item][:distance] = bfs_info[current_item][:distance] + 1
        queue.enqueue item
      end
    end

    return bfs_info
  end

end


# Example
# -------

puts "Graph represented as edge list:"
print graph_edge_list
puts

puts "Graph represented as adjacency list:"
graph = Graph.new(graph_edge_list)
puts graph.adjacency_list

puts "Add edge 3-2:"
graph.add_edge([3,2])
puts graph.adjacency_list

puts "Remove edge 3-2:"
graph.remove_edge([3,2])
puts graph.adjacency_list

puts "Shortest path between 4 and 5:"
puts graph.shortest_path_between(4,5)

puts "Shortest path between 2 and 3:"
puts graph.shortest_path_between(2,3)
