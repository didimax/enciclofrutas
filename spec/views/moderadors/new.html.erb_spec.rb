require 'spec_helper'

describe "moderadors/new" do
  before(:each) do
    assign(:moderador, stub_model(Moderador,
      :nome => "MyString",
      :sobrenome => "MyString",
      :senha => "MyString",
      :pais => "MyString",
      :cidade => "MyString",
      :genero => "MyString",
      :data_nasc => "MyString",
      :cpf => "MyString",
      :rg => "MyString",
      :email => "MyString"
    ).as_new_record)
  end

  it "renders new moderador form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => moderadors_path, :method => "post" do
      assert_select "input#moderador_nome", :name => "moderador[nome]"
      assert_select "input#moderador_sobrenome", :name => "moderador[sobrenome]"
      assert_select "input#moderador_senha", :name => "moderador[senha]"
      assert_select "input#moderador_pais", :name => "moderador[pais]"
      assert_select "input#moderador_cidade", :name => "moderador[cidade]"
      assert_select "input#moderador_genero", :name => "moderador[genero]"
      assert_select "input#moderador_data_nasc", :name => "moderador[data_nasc]"
      assert_select "input#moderador_cpf", :name => "moderador[cpf]"
      assert_select "input#moderador_rg", :name => "moderador[rg]"
      assert_select "input#moderador_email", :name => "moderador[email]"
    end
  end
end
