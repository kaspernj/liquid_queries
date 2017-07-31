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

  def liquid_method_missing(key)
    before_method(key)
  end
end
