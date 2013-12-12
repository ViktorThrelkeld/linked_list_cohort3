class LinkedList
attr_accessor :new_item
  def initialize
  # @count = 0
  @head = nil
  end

  def add_item(item)
    # @get = item
    if @head.nil?
      @head = LinkedListItem.new(item)
    else
     @head.next_list_item = LinkedListItem.new(item)
    end

    # @head = 0
    # @count += 1
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
    # @get
  end


  # def head
  #   @head
  # end
end