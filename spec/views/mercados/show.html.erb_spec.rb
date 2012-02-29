require 'spec_helper'

describe "mercados/show" do
  before(:each) do
    @mercado = assign(:mercado, stub_model(Mercado,
      :nome => "Nome",
      :endereco => "Endereco",
      :telefone => "Telefone"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Nome/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Endereco/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Telefone/)
  end
end
