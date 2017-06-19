module LiquidQueries
  path = "#{File.dirname(__FILE__)}/liquid_queries"

  autoload :Collection, "#{path}/collection"
  autoload :CollectionMethods, "#{path}/collection_methods"
  autoload :OrderQuery, "#{path}/order_query"
  autoload :RansackQuery, "#{path}/ransack_query"
  autoload :RansackQueryValue, "#{path}/ransack_query_value"
end
