class LiquidQueries::Collection < Liquid::Drop
  include LiquidQueries::CollectionMethods

  attr_reader :collection

  def initialize(collection:)
    @collection = collection
  end
end
