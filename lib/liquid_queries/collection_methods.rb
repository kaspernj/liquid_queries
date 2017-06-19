module LiquidQueries::CollectionMethods
  def all
    collection
  end

  def any?
    collection.any?
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

  def order
    ::LiquidQueries::OrderQuery.new(collection: collection)
  end

  def pop
    collection.pop
  end

  def ransack
    ::LiquidQueries::RansackQuery.new(collection: collection)
  end

  def reverse_order
    ::LiquidQueries::Collection.new(collection: collection.reverse_order)
  end

  def shift
    collection.shift
  end
end
