graph = {'0': ['1', '2'],
         '1': ['0', '3', '4'],
         '2': ['0'],
         '3': ['1'],
         '4': ['2', '3']}

def bfs(graph, start, visited)
  visited.add(start)
  q = []
  graph[start.to_sym].each { |e| q.push(e) }
  while !q.nil?  
    vertex = q.delete_at(0)
    break if vertex.nil?
    graph[vertex.to_sym].each do |node|
      if !visited.include?(node)
        visited.add(node)
        graph[node.to_sym].each { |e| q.push(e) }
      end
    end
  end
  q
end
visited = Set.new([])
# dfs(graph, '0', visited)
  bfs(graph, '0', visited)
p visited
