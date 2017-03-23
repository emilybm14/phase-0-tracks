class TodoList
  def initialize(item_array)
    @item = item_array
  end

  def get_items
  @item
  end

  def add_item(item)
    @item << item
  end
  def delete_item(item)
    @item.delete(item)
  end
  def get_item(index_number)
    @item[index_number]
  end

end