require 'spec_helper'

describe "vitaminas/show" do
  before(:each) do
    @vitamina = assign(:vitamina, stub_model(Vitamina,
      :nome => "Nome",
      :beneficio => "Beneficio"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Nome/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Beneficio/)
  end
end
