require 'spec_helper'

describe "moderadors/index" do
  before(:each) do
    assign(:moderadors, [
      stub_model(Moderador,
        :nome => "Nome",
        :sobrenome => "Sobrenome",
        :senha => "Senha",
        :pais => "Pais",
        :cidade => "Cidade",
        :genero => "Genero",
        :data_nasc => "Data_nasc",
        :cpf => "Cpf",
        :rg => "Rg",
        :email => "Email"
      ),
      stub_model(Moderador,
        :nome => "Nome",
        :sobrenome => "Sobrenome",
        :senha => "Senha",
        :pais => "Pais",
        :cidade => "Cidade",
        :genero => "Genero",
        :data_nasc => "Data_nasc",
        :cpf => "Cpf",
        :rg => "Rg",
        :email => "Email"
      )
    ])
  end

  it "renders a list of moderadors" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Nome".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Sobrenome".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Senha".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Pais".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Cidade".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Genero".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Data_nasc".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Cpf".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Rg".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Email".to_s, :count => 2
  end
end
