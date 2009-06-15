require File.dirname(__FILE__) + '/../../spec_helper'

describe "snippet/_display.html.erb" do

  before(:each) do
    @snippet = stub("Snippet")
    assigns[:snippet] = @snippet
  end

  it "should display the snippet content" do
    @snippet.stub!(:content).and_return "Da Content"
    @snippet.stub!(:id).and_return 1
    render :partial => "snippet/display"
    response.should contain("Da Content")
  end

end
