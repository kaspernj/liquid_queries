class LiquidQueries::RansackQueryValue < Liquid::Drop
  def initialize(collection:, key:)
    @collection = collection
    @key = key
  end

  def before_method(value)
    ::LiquidQueries::Collection.new(
      collection: @collection.ransack(@key => value).result
    )
  end

  def liquid_method_missing(key)
    before_method(key)
  end
end
