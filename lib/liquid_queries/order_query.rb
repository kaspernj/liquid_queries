class LiquidQueries::OrderQuery < Liquid::Drop
  def initialize(collection:)
    @collection = collection
  end

  def before_method(key)
    ::LiquidQueries::Collection.new(
      collection: @collection.order(key)
    )
  end

  def liquid_method_missing(key)
    before_method(key)
  end
end
