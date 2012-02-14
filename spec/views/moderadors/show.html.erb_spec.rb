require 'spec_helper'

describe "moderadors/show" do
  before(:each) do
    @moderador = assign(:moderador, stub_model(Moderador,
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
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Nome/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Sobrenome/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Senha/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Pais/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Cidade/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Genero/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Data_nasc/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Cpf/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Rg/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Email/)
  end
end
