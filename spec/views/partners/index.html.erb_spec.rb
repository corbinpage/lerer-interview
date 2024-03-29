require 'spec_helper'

describe "partners/index" do
  before(:each) do
    assign(:partners, [
      stub_model(Partner,
        :name => "Name",
        :description => "MyText",
        :owner => "Owner",
        :custom1 => "MyText",
        :custom2 => "MyText",
        :custom3 => "MyText"
      ),
      stub_model(Partner,
        :name => "Name",
        :description => "MyText",
        :owner => "Owner",
        :custom1 => "MyText",
        :custom2 => "MyText",
        :custom3 => "MyText"
      )
    ])
  end

  it "renders a list of partners" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Owner".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
