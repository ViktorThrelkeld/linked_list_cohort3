class LinkedList
# attr_reader :size
  def initialize(*payload)
    @count = 0
    @size = 0
  end

  def add_item(payload)
    new_item = LinkedListItem.new(payload)
    item = @head
      if @head.nil?
        @head = new_item
        @size += 1
      else
        @count.times do
        item = item.next_list_item
        end
          item.next_list_item = new_item
          @count += 1
          @size +=1

      end
  end

  def get(index)
    raise IndexError if index < 0
    item = @head
    if index == 0
      @head.payload
    else
      index.times do
        raise IndexError if item == nil
        item = item.next_list_item
      end
      item.payload
    end
  end

  def size
    @size
  end

  def last
    # puts.payload
  end

end