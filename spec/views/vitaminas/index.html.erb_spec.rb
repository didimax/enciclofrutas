require 'spec_helper'

describe "vitaminas/index" do
  before(:each) do
    assign(:vitaminas, [
      stub_model(Vitamina,
        :nome => "Nome",
        :beneficio => "Beneficio"
      ),
      stub_model(Vitamina,
        :nome => "Nome",
        :beneficio => "Beneficio"
      )
    ])
  end

  it "renders a list of vitaminas" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Nome".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Beneficio".to_s, :count => 2
  end
end
