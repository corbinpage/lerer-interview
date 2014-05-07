require 'spec_helper'

describe "partners/new" do
  before(:each) do
    assign(:partner, stub_model(Partner,
      :name => "MyString",
      :description => "MyText",
      :owner => "MyString",
      :custom1 => "MyText",
      :custom2 => "MyText",
      :custom3 => "MyText"
    ).as_new_record)
  end

  it "renders new partner form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", partners_path, "post" do
      assert_select "input#partner_name[name=?]", "partner[name]"
      assert_select "textarea#partner_description[name=?]", "partner[description]"
      assert_select "input#partner_owner[name=?]", "partner[owner]"
      assert_select "textarea#partner_custom1[name=?]", "partner[custom1]"
      assert_select "textarea#partner_custom2[name=?]", "partner[custom2]"
      assert_select "textarea#partner_custom3[name=?]", "partner[custom3]"
    end
  end
end
