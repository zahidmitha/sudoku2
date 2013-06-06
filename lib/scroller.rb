# class Scroller
#   attr_reader :items

#   def initialize(items = [])
#     @items = items
#     @position = 0
#   end

#   def current
#     items[@position]
#   end

#   def next
#     increment_position
#     current
#   end

#   def <<(item)
#     @items << item
#   end

#   private

#   def increment_position
#     @position = (@position + 1) % items.count
#   end

# end