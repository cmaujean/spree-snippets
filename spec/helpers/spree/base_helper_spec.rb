require 'spec_helper'

describe Spree::BaseHelper do
  include Spree::BaseHelper

  context "render_snippet" do

    let(:snippet) { mock_model(Spree::Snippet, :slug => "foo", :content => "<h1>Test Snippet Content</h1>") }
    it "should return snippet content rendered through the snippet/display partial" do
        result = render_snippet(snippet.id)
        result.should eql("<div id=\"snippet_#{snippet.id}\"><h1>Test Snippet Content</h1></div>\n")
    end
  end

end
