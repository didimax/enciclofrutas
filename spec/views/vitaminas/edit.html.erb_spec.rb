require 'spec_helper'

describe "vitaminas/edit" do
  before(:each) do
    @vitamina = assign(:vitamina, stub_model(Vitamina,
      :nome => "MyString",
      :beneficio => "MyString"
    ))
  end

  it "renders the edit vitamina form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => vitaminas_path(@vitamina), :method => "post" do
      assert_select "input#vitamina_nome", :name => "vitamina[nome]"
      assert_select "input#vitamina_beneficio", :name => "vitamina[beneficio]"
    end
  end
end
