require 'spec_helper'

describe "documents/new" do
  before(:each) do
    assign(:document, stub_model(Document,
      :name => "MyString",
      :description => "MyText",
      :filetype => "MyString",
      :filelocation => "MyString"
    ).as_new_record)
  end

  it "renders new document form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", documents_path, "post" do
      assert_select "input#document_name[name=?]", "document[name]"
      assert_select "textarea#document_description[name=?]", "document[description]"
      assert_select "input#document_filetype[name=?]", "document[filetype]"
      assert_select "input#document_filelocation[name=?]", "document[filelocation]"
    end
  end
end
