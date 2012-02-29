require 'spec_helper'

describe "frutas/show" do
  before(:each) do
    @fruta = assign(:fruta, stub_model(Fruta,
      :nome => "Nome",
      :nome_cientifico => "Nome_cientifico",
      :peso => "Peso",
      :cor => "Cor",
      :preco => "Preco",
      :localizacao => "Localizacao",
      :calorias => "Calorias",
      :informacao => "Informacao",
      :moderador => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Nome/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Nome_cientifico/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Peso/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Cor/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Preco/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Localizacao/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Calorias/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Informacao/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
  end
end
