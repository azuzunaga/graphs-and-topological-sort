require 'byebug'

class Vertex
  attr_accessor :out_edges, :in_edges, :value

  def initialize(value)
    @value = value
    @out_edges = []
    @in_edges = []
  end
end

class Edge
  attr_accessor :from_vertex, :to_vertex, :cost

  def initialize(from_vertex, to_vertex, cost = 1)
    @from_vertex = from_vertex
    @to_vertex = to_vertex
    @cost = cost
    to_vertex.in_edges.push(self)
    from_vertex.out_edges.push(self)
  end

  def destroy!
    to_vertex.in_edges.delete(self)
    from_vertex.out_edges.delete(self)

    self.from_vertex = nil
    self.to_vertex = nil
  end
end
