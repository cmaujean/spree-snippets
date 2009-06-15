require File.dirname(__FILE__) + '/../spec_helper'

describe Snippet do

  describe "without a slug" do
    it "should not be valid" do
      @snippet = Snippet.new
      @snippet.should_not be_valid
    end
  end
  
  describe "with a non-unique slug" do
    it "should not be valid" do
      Snippet.create :slug => "harold"
      @snippet = Snippet.new :slug => "harold"
      @snippet.should_not be_valid
    end
  end

  describe "with a valid slug" do
    it "should be valid" do
      @snippet = Snippet.new :slug => "valid, unique slug"
      @snippet.should be_valid
    end
  end
end
