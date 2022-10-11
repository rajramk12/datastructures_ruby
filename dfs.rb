graph = {
  '5': ['3','7'],
  '3': ['2', '4'],
  '7': ['8'],
  '2': [],
  '4': ['8'],
  '8': []
}
  $count = 0
def dfs(node, graph, visited)
  $count += 1 
  if  visited.size() == 0 
    visited[node.to_s.to_sym] = true
  else
    return if visited.include?(node.to_s.to_sym)
  end
  visited[node.to_s.to_sym] = true
  if graph[node.to_s.to_sym].size() >= 1 
    for neighbor in graph[node.to_s.to_sym]
      dfs(neighbor, graph, visited)
    end
   end
end
visited = {}
dfs(5, graph, visited)
print visited
print $count

