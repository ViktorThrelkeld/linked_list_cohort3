class LinkedList

  def initialize
    @count = 0
  end

  def add_item(item)
    new_item = LinkedListItem.new(item)
    item = @head
      if @head.nil?
        @head = new_item
      else
       @count.times do
       item = item.next_list_item
       end
      item.next_list_item = new_item
      @count += 1
      end
  end

  def get(index)
    item = @head
    if index == 0
      @head.payload
    else
      index.times do
        item = item.next_list_item
      end
      item.payload
    end
  end

end