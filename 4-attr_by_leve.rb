class TreeNode
  attr_accessor :left
  attr_accessor :right
  attr_reader :value
end

# return the array containing the tree levels, from root to last level.
def tree_by_levels_rec(node, level, acc)
  return unless node

  acc[level].push(node.value)
  tree_by_levels_rec(node.left, level + 1, acc)
  tree_by_levels_rec(node.right, level + 1, acc)
end

def tree_by_levels(node)
  acc = Hash.new { |h, k| h[k] = [] }
  tree_by_levels_rec(node, 0, acc)
  acc.to_a.sort!.map { |e| e[1] } .flatten
end
