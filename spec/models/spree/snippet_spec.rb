require 'spec_helper'

describe Spree::Snippet do

  describe "without a slug" do
    it "should not be valid" do
      @snippet = Spree::Snippet.new
      @snippet.should_not be_valid
    end
  end
  
  describe "with a non-unique slug" do
    it "should not be valid" do
      Spree::Snippet.create :slug => "harold"
      @snippet = Spree::Snippet.new :slug => "harold"
      @snippet.should_not be_valid
    end
  end

  describe "with a valid slug" do
    it "should be valid" do
      @snippet = Spree::Snippet.new :slug => "valid, unique slug"
      @snippet.should be_valid
    end
  end
end
