require 'spec_helper'

describe "epocas/show" do
  before(:each) do
    @epoca = assign(:epoca, stub_model(Epoca,
      :estacao_do_ano => "Estacao_do_ano"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Estacao_do_ano/)
  end
end
