require 'spec_helper'

describe "instructors/index" do
  before(:each) do
    assign(:instructors, [
      stub_model(Instructor,
        :name => "Name",
        :proficiency => "Proficiency",
        :rates => "Rates"
      ),
      stub_model(Instructor,
        :name => "Name",
        :proficiency => "Proficiency",
        :rates => "Rates"
      )
    ])
  end

  it "renders a list of instructors" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Proficiency".to_s, :count => 2
    assert_select "tr>td", :text => "Rates".to_s, :count => 2
  end
end
