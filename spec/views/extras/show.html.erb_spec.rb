require 'spec_helper'

describe "extras/show" do
  before(:each) do
    @extra = assign(:extra, stub_model(Extra,
      :information => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/MyText/)
  end
end
