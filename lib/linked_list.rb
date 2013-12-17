class LinkedList

  def initialize(*seed)
    @count = 0
    @size = 0
    @last = nil
    seed.each do |item|
      add_item(item)
    end
  end

  def to_s
    if @head.nil?
     "| |"
    else
      value = @head.payload
      item = @head
      while !item.last?
        item = item.next_list_item
       value += ", " + item.payload
      end
    '| ' + value + ' |'
    end
  end

  def add_item(payload)
    new_item = LinkedListItem.new(payload)
    item = @head
      if @head.nil?
        @head = new_item
        @size += 1
        @last = @head
      else
        @count.times do
        item = item.next_list_item
        end
          item.next_list_item = new_item
          @last = new_item
          @count += 1
          @size +=1
      end
  end

  def get(index)
    if index < 0
      raise IndexError
    end
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

  def [](index)
    get(index)
  end

  def []=(index, newpayload)
    item = @head
    index.times do
    item = item.next_list_item
    end
    item.payload = newpayload
  end

end