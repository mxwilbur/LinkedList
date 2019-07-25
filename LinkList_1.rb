class LinkedListNode
  attr_accessor :value, :next_node

  def initialize(value,next_node=nil)
    @value = value
    @next_node = next_node
  end
end



def print_values(list_node)
  if list_node
    print "#{list_node.value} ==>"
    print_values(list_node.next_node)
  else
    print "nil/n"
    return
  end
end

class Stack
    attr_reader :data

    def initialize
        @data = nil
    end

    # Push a value onto the stack
    def push(value)
      @data = LinkedListNode.new(value,@data)
    end

    # Pop an item off the stack.
    # Remove the last item that was pushed onto the
    # stack and return the value to the user
    def pop
      if @data 
        @data = @data.next_node
      else
        @data = nil
      end

    end

end

# newstack = Stack.new
# newstack.push(3)
# newstack.push(5)
# newstack.push(7)
# print_values(newstack.data)
# newstack.pop
# print_values(newstack.data)

def reverse_list(list)
    # ADD CODE HERE
  stack = Stack.new

  while list
      # ADD CODE HERE
    stack.push(list.value)
    list = list.next_node
  end

    # ADD CODE HERE
  stack.data  
end

node1 = LinkedListNode.new(37,nil)
node2 = LinkedListNode.new(99,node1)
node3 = LinkedListNode.new(12,node2)



# THIS IS THE ASSIGNMENT BELOW (SO TO SPEAK)
print_values(node3)

puts "-------"

revlist = reverse_list(node3)

print_values(revlist)


