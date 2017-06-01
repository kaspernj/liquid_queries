class LiquidQueries::RansackQuery < Liquid::Drop
  def initialize(collection:)
    @collection = collection
  end

  def before_method(key)
    LiquidQueries::LiquidRansackValue.new(
      collection: @collection,
      key: key
    )
  end
end
