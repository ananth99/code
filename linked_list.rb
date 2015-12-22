# Linked List Implementation in Ruby
# Author: Ananth Madhavan
# 7th Oct 2015

class LinkedListStack
	attr_accessor :head

	def empty?
		@head == nil
	end

	def push data
		item = Item.new(data)
		item.next = @head
		@head = item
	end

	def pop
		return nil if empty?
		item = @head
		@head = item.next
		return item.data
	end

	class Item
		attr_accessor :data, :next

		def initialize(data)
			@data = data
		end
	end
end
