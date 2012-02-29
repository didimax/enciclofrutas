require 'spec_helper'

describe "usuarios/show" do
  before(:each) do
    @usuario = assign(:usuario, stub_model(Usuario,
      :nome => "Nome",
      :sobrenome => "Sobrenome",
      :data_nasc => "Data_nasc",
      :genero => "Genero",
      :senha => "Senha",
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
    rendered.should match(/Data_nasc/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Genero/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Senha/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Email/)
  end
end
