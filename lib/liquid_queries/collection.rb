class LiquidQueries::Collection < Liquid::Drop
  def initialize(collection:)
    @collection = collection
  end

  def all
    @collection
  end

  def first
    @collection.first
  end

  def last
    @collection.last
  end

  def ransack
    LiquidQueries::RansackQuery.new(collection: @collection)
  end
end
