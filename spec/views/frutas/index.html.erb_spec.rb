require 'spec_helper'

describe "frutas/index" do
  before(:each) do
    assign(:frutas, [
      stub_model(Fruta,
        :nome => "Nome",
        :nome_cientifico => "Nome_cientifico",
        :peso => "Peso",
        :cor => "Cor",
        :preco => "Preco",
        :localizacao => "Localizacao",
        :calorias => "Calorias",
        :informacao => "Informacao",
        :moderador => nil
      ),
      stub_model(Fruta,
        :nome => "Nome",
        :nome_cientifico => "Nome_cientifico",
        :peso => "Peso",
        :cor => "Cor",
        :preco => "Preco",
        :localizacao => "Localizacao",
        :calorias => "Calorias",
        :informacao => "Informacao",
        :moderador => nil
      )
    ])
  end

  it "renders a list of frutas" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Nome".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Nome_cientifico".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Peso".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Cor".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Preco".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Localizacao".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Calorias".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Informacao".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
