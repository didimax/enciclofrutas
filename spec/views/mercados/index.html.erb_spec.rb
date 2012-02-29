require 'spec_helper'

describe "mercados/index" do
  before(:each) do
    assign(:mercados, [
      stub_model(Mercado,
        :nome => "Nome",
        :endereco => "Endereco",
        :telefone => "Telefone"
      ),
      stub_model(Mercado,
        :nome => "Nome",
        :endereco => "Endereco",
        :telefone => "Telefone"
      )
    ])
  end

  it "renders a list of mercados" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Nome".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Endereco".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Telefone".to_s, :count => 2
  end
end
