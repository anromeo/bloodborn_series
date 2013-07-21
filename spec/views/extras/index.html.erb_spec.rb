require 'spec_helper'

describe "extras/index" do
  before(:each) do
    assign(:extras, [
      stub_model(Extra,
        :information => "MyText"
      ),
      stub_model(Extra,
        :information => "MyText"
      )
    ])
  end

  it "renders a list of extras" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
