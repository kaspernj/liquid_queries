class LiquidQueries::Collection < Liquid::Drop
  include LiquidQueries::CollectionMethods

  def initialize(collection:)
    @collection = collection
  end
end
