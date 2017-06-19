class LiquidQueries::RansackQuery < Liquid::Drop
  def initialize(collection:)
    @collection = collection
  end

  def before_method(key)
    ::LiquidQueries::RansackQueryValue.new(
      collection: @collection,
      key: key
    )
  end
end
