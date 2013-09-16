require 'spec_helper'

describe "instructors/new" do
  before(:each) do
    assign(:instructor, stub_model(Instructor,
      :name => "MyString",
      :proficiency => "MyString",
      :rates => "MyString"
    ).as_new_record)
  end

  it "renders new instructor form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", instructors_path, "post" do
      assert_select "input#instructor_name[name=?]", "instructor[name]"
      assert_select "input#instructor_proficiency[name=?]", "instructor[proficiency]"
      assert_select "input#instructor_rates[name=?]", "instructor[rates]"
    end
  end
end
