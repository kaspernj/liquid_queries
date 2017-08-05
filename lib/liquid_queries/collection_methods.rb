module LiquidQueries::CollectionMethods
  def all
    collection
  end

  def any?
    collection.any?
  end

  def count
    collection.count
  end

  def current_page
    collection.current_page
  end

  def empty?
    collection.empty?
  end

  def first
    collection.first
  end

  def last
    collection.last
  end

  def length
    collection.length
  end

  def order
    ::LiquidQueries::OrderQuery.new(collection: collection)
  end

  def pop
    to_a.pop
  end

  def ransack
    ::LiquidQueries::RansackQuery.new(collection: collection)
  end

  def reverse_order
    ::LiquidQueries::Collection.new(collection: collection.reverse_order)
  end

  def size
    collection.size
  end

  def shift
    to_a.shift
  end

  def to_a
    @_to_a ||= collection.to_a
  end

  def total_entries
    collection.total_entries
  end

  def total_pages
    collection.total_pages
  end
end
