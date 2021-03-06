require "spec_helper"

describe Mongoid::Extensions::Array::Parentization do

  describe "#parentize" do

    before do
      @parent = stub
      @child = mock
      @array = [@child]
    end

    it "sets the parent on each element" do
      @child.expects(:parentize).with(@parent, :child)
      @array.parentize(@parent, :child)
    end

  end

end
