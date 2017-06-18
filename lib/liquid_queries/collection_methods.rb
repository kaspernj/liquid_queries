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

  def pop
    collection.pop
  end

  def ransack
    LiquidQueries::RansackQuery.new(collection: collection)
  end

  def shift
    collection.shift
  end
end
