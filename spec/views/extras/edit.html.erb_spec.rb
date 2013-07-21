require 'spec_helper'

describe "extras/edit" do
  before(:each) do
    @extra = assign(:extra, stub_model(Extra,
      :information => "MyText"
    ))
  end

  it "renders the edit extra form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", extra_path(@extra), "post" do
      assert_select "textarea#extra_information[name=?]", "extra[information]"
    end
  end
end
