require 'spec_helper'

describe "instructors/show" do
  before(:each) do
    @instructor = assign(:instructor, stub_model(Instructor,
      :name => "Name",
      :proficiency => "Proficiency",
      :rates => "Rates"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/Proficiency/)
    rendered.should match(/Rates/)
  end
end
