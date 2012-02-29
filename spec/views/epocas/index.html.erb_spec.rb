require 'spec_helper'

describe "epocas/index" do
  before(:each) do
    assign(:epocas, [
      stub_model(Epoca,
        :estacao_do_ano => "Estacao_do_ano"
      ),
      stub_model(Epoca,
        :estacao_do_ano => "Estacao_do_ano"
      )
    ])
  end

  it "renders a list of epocas" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Estacao_do_ano".to_s, :count => 2
  end
end
