class Vertex
  attr_accessor :out_edges, :in_edges, :value

  def initialize(value)
    @value = value
    @out_edges = []
    @in_edges = []
  end
end

class Edge
  def initialize(from_vertex, to_vertex, cost = 1)
    @from_vertex = from_vertex
    @to_vertex = to_vertex
    @cost = cost

  end

  def destroy!

  end
end
