require 'spec_helper'

describe "extras/new" do
  before(:each) do
    assign(:extra, stub_model(Extra,
      :information => "MyText"
    ).as_new_record)
  end

  it "renders new extra form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", extras_path, "post" do
      assert_select "textarea#extra_information[name=?]", "extra[information]"
    end
  end
end
