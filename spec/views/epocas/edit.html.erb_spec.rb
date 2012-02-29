require 'spec_helper'

describe "epocas/edit" do
  before(:each) do
    @epoca = assign(:epoca, stub_model(Epoca,
      :estacao_do_ano => "MyString"
    ))
  end

  it "renders the edit epoca form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => epocas_path(@epoca), :method => "post" do
      assert_select "input#epoca_estacao_do_ano", :name => "epoca[estacao_do_ano]"
    end
  end
end
