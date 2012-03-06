require 'spec_helper'

describe "frutas/new" do
  before(:each) do
    assign(:fruta, stub_model(Fruta,
      :nome => "MyString",
      :nome_cientifico => "MyString",
      :peso => "MyString",
      :cor => "MyString",
      :preco => "MyString",
      :localizacao => "MyString",
      :calorias => "MyString",
      :informacao => "MyString",
      :moderador => nil,
      :epoca => nil
    ).as_new_record)
  end

  it "renders new fruta form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => frutas_path, :method => "post" do
      assert_select "input#fruta_nome", :name => "fruta[nome]"
      assert_select "input#fruta_nome_cientifico", :name => "fruta[nome_cientifico]"
      assert_select "input#fruta_peso", :name => "fruta[peso]"
      assert_select "input#fruta_cor", :name => "fruta[cor]"
      assert_select "input#fruta_preco", :name => "fruta[preco]"
      assert_select "input#fruta_localizacao", :name => "fruta[localizacao]"
      assert_select "input#fruta_calorias", :name => "fruta[calorias]"
      assert_select "input#fruta_informacao", :name => "fruta[informacao]"
      assert_select "input#fruta_moderador", :name => "fruta[moderador]"
      assert_select "input#fruta_epoca", :name => "fruta[epoca]"
    end
  end
end
