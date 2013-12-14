class LinkedList

  def initialize(*payload)
    # if payload == nil
    #   @x = nil
    # end
    @count = 0
    @size = 0
    @last = nil
  end

  def to_s
    if @x == nil
     "| |"
    else
    "| "+ @x +" |"
    end
  end

  def add_item(payload)
    new_item = LinkedListItem.new(payload)
    item = @head
      if @head.nil?
        @head = new_item
        @last = @head
        @size += 1
          @x = new_item.payload

      else
        @count.times do
        item = item.next_list_item
        # @x += item.payload
        end
          item.next_list_item = new_item
          @x += ", " + new_item.payload
          @last = new_item
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
    if @last.nil?
      nil
    else
    @last.payload
    end
  end

end