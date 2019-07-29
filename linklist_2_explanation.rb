# sets method name and names arguments for method
def reverse_list_2(list, previous=nil)
  # use 'if list' to iterate through list (of nodes). Once it sees
  # null it jumps out of "if list" goes to line 19
  if list
  # set variable 'next_node' to = 'list.next_node' 
  # next_node becomes 'list'
    next_node = list.next_node
  # now define the list.next_node to equal the 'previous'.
  # 'previous' initially = 'nil'  
  # Linked Lists data structure allows for each object to have 
  # a next_node and a previous node.  As requested, the node is now
  # pointing to the prior node (reverse direction)
  # (I'm not sure I have this explanation correct for 'previous'?)
    list.next_node = previous
  # next line is the recursion...recalling program from within
  # and setting the 2 arguments.  'next_node' is 'list' 
  # 'list' is now 'previous'
  # 
    reverse_list_2(next_node, list)
  end
end