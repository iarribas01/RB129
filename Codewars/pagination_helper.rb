# TODO: complete this class

class PaginationHelper

  # The constructor takes in an array of items and a integer indicating how many
  # items fit within a single page
  def initialize(collection, items_per_page)
    @collection = collection
    @items_per_page = items_per_page
  end
  
  # returns the number of items within the entire collection
  def item_count
    @collection.size
  end
	
  # returns the number of pages
  def page_count
    (@collection.size / @items_per_page.to_f).ceil
  end
	
  # returns the number of items on the current page. page_index is zero based.
  # this method should return -1 for page_index values that are out of range
  def page_item_count(page_index)
    return -1 unless (0...page_count).cover? page_index
    return @collection.size % @items_per_page if page_index == page_count - 1
    @items_per_page

  end
	
  # determines what page an item is on. Zero based indexes.
  # this method should return -1 for item_index values that are out of range
  def page_index(item_index)
    return -1 unless (0...@collection.size).cover? item_index
    item_index / @items_per_page
  end
end

helper = PaginationHelper.new(['a','b','c','d','e','f'], 4)
puts helper.page_count() == 2
puts helper.item_count() == 6
puts helper.page_item_count(0)  == 4
puts helper.page_item_count(1) == 2
puts helper.page_item_count(2) == -1

# # page_index takes an item index and returns the page that it belongs on
puts helper.page_index(5) == 1 
puts helper.page_index(2) == 0
puts helper.page_index(20) == -1
puts helper.page_index(-10) == -1