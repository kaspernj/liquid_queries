require "rails_helper"

describe LiquidQueries::CollectionMethods do
  let!(:task_1) { create :task }
  let!(:task_2) { create :task }
  let!(:task_3) { create :task }
  let(:collection) { LiquidQueries::Collection.new(collection: Task.all) }

  describe "#order" do
    it "orders a collection" do
      sql = collection.order.before_method(:name).collection.to_sql

      expect(sql).to eq 'SELECT "tasks".* FROM "tasks" ORDER BY "tasks"."name" ASC'
    end
  end

  describe "#reverse_order" do
    it "reverses the order" do
      sql = collection.order.before_method(:name).reverse_order.collection.to_sql

      expect(sql).to eq 'SELECT "tasks".* FROM "tasks" ORDER BY "tasks"."name" DESC'
    end
  end
end
