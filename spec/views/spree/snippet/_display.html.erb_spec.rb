require 'spec_helper'

describe "spree/snippets/_snippet.html.erb" do

  let(:snippet) { Spree::Snippet.new(:id=>1, :content => "Da Content") }

  context "display" do

    it "should display the snippet content" do
      @snippet = snippet
      render :partial => "spree/snippets/snippet"
      response.should include("Da Content")
    end

  end

end
