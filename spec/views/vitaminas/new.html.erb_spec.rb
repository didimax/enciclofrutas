require 'spec_helper'

describe "vitaminas/new" do
  before(:each) do
    assign(:vitamina, stub_model(Vitamina,
      :nome => "MyString",
      :beneficio => "MyString"
    ).as_new_record)
  end

  it "renders new vitamina form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => vitaminas_path, :method => "post" do
      assert_select "input#vitamina_nome", :name => "vitamina[nome]"
      assert_select "input#vitamina_beneficio", :name => "vitamina[beneficio]"
    end
  end
end
