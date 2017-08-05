require "rails_helper"

describe LiquidQueries::CollectionMethods do
  let!(:task_1) { create :task }
  let!(:task_2) { create :task }
  let!(:task_3) { create :task }
  let(:collection) { LiquidQueries::Collection.new(collection: Task.all) }

  describe "#any?" do
    it "returns true when something is present in the collection" do
      expect(collection.any?).to eq true
    end
  end

  describe "#count" do
    it "returns the correct count" do
      expect(collection.count).to eq 3
    end
  end

  describe "#empty?" do
    it "returns false when the collection contains something" do
      expect(collection.empty?).to eq false
    end
  end

  describe "#first" do
    it "returns the first in the collection" do
      expect(collection.first).to eq task_1
    end
  end

  describe "#last" do
    it "returns the last in the collection" do
      expect(collection.last).to eq task_3
    end
  end

  describe "#length" do
    it "returns the correct length" do
      expect(collection.length).to eq 3
    end
  end

  describe "#order" do
    it "orders a collection" do
      sql = collection.order.before_method(:name).collection.to_sql

      expect(sql).to eq 'SELECT "tasks".* FROM "tasks" ORDER BY "tasks"."name" ASC'
    end
  end

  describe "#pop" do
    it "returns the last in the collection and removes it from the collection" do
      expect(collection.pop).to eq task_3
      expect(collection.to_a).to eq [task_1, task_2]
    end
  end

  describe "#reverse_order" do
    it "reverses the order" do
      sql = collection.order.before_method(:name).reverse_order.collection.to_sql

      expect(sql).to eq 'SELECT "tasks".* FROM "tasks" ORDER BY "tasks"."name" DESC'
    end
  end

  describe "#shift" do
    it "returns the first in the collection and removes it from the collection" do
      expect(collection.shift).to eq task_1
      expect(collection.to_a).to eq [task_2, task_3]
    end
  end

  describe "#size" do
    it "returns the correct size" do
      expect(collection.size).to eq 3
    end
  end

  describe "#to_a" do
    it "returns an array" do
      expect(collection.to_a).to be_an Array
    end
  end
end
