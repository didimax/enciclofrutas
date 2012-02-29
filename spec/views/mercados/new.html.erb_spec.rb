require 'spec_helper'

describe "mercados/new" do
  before(:each) do
    assign(:mercado, stub_model(Mercado,
      :nome => "MyString",
      :endereco => "MyString",
      :telefone => "MyString"
    ).as_new_record)
  end

  it "renders new mercado form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => mercados_path, :method => "post" do
      assert_select "input#mercado_nome", :name => "mercado[nome]"
      assert_select "input#mercado_endereco", :name => "mercado[endereco]"
      assert_select "input#mercado_telefone", :name => "mercado[telefone]"
    end
  end
end
