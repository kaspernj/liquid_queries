module LiquidQueries::CollectionMethods
  def all
    collection
  end

  def any?
    collection.any?
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

  def pop
    collection.pop
  end

  def ransack
    LiquidQueries::RansackQuery.new(collection: collection)
  end

  def shift
    collection.shift
  end

  def total_entries
    collection.total_entries
  end

  def total_pages
    collection.total_pages
  end
end
