require "spec_helper"
require "tic_tac_toe/core_extensions"

describe Array do
  context "#all_empty?" do
    it "returns true if all elements of the Array are empty" do
      expect(['','',''].all_empty?).to be_truthy
    end

    it "returns false if some of the Array elements are not empty" do
      expect(['',1,'',Object.new, :a].all_empty?).to be_falsey
    end

    it "returns true for an empty Array" do
      expect([].all_empty?).to be_truthy
    end
  end

  context "#all_same?" do
    it "returns true if all elements of the Array are the same" do
      expect(["A","A","A"].all_same?).to be_truthy
    end

    it "returns false if some of the Array elements are not the same" do
      expect(["",1,"", Object.new, :a].all_same?).to be_falsey
    end

    it "returns true for an empty Array" do
      expect([].all_same?).to be_truthy
    end
  end

  context "#any_empty" do
    it "return true if any of the elements of the Array are empty" do
      expect([''].any_empty?).to be_truthy
    end

    it "returns false if none of the elements in the array are empty" do
      expect([1, :a].any_empty?).to be_falsey
    end

    it "returns false if the whole Array is empty" do
      expect([].any_empty?).to be_falsey
    end
  end

  context "#none_empty?" do
    it "returns true if none of the elements are empty" do
      expect([1, Object.new, :a].none_empty?).to be_truthy
    end

    it "returns false if any of the elements are empty" do
      expect(['', 1, Object.new, :a].none_empty?).to be_falsey
    end
  end
end
