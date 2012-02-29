require 'spec_helper'

describe "epocas/new" do
  before(:each) do
    assign(:epoca, stub_model(Epoca,
      :estacao_do_ano => "MyString"
    ).as_new_record)
  end

  it "renders new epoca form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => epocas_path, :method => "post" do
      assert_select "input#epoca_estacao_do_ano", :name => "epoca[estacao_do_ano]"
    end
  end
end
