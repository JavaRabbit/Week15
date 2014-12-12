class ListItem
	attr_accessor :data, :next

	def initialize(data, nxt = nil)
		@data, @next = data, nxt
	end
end

# run this in irb, load "link_list.rb"
# l = ListItem.new(1)
# l.data l.next
# head = ListItem.new(1, ListItem.new(2))
# head.data
# head.next.data
# head = ListItem.new(1, ListItem.new(2, ListItem.new(3)))
# head.next.next.data