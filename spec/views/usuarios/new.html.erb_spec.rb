require 'spec_helper'

describe "usuarios/new" do
  before(:each) do
    assign(:usuario, stub_model(Usuario,
      :nome => "MyString",
      :sobrenome => "MyString",
      :data_nasc => "MyString",
      :genero => "MyString",
      :senha => "MyString",
      :email => "MyString"
    ).as_new_record)
  end

  it "renders new usuario form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => usuarios_path, :method => "post" do
      assert_select "input#usuario_nome", :name => "usuario[nome]"
      assert_select "input#usuario_sobrenome", :name => "usuario[sobrenome]"
      assert_select "input#usuario_data_nasc", :name => "usuario[data_nasc]"
      assert_select "input#usuario_genero", :name => "usuario[genero]"
      assert_select "input#usuario_senha", :name => "usuario[senha]"
      assert_select "input#usuario_email", :name => "usuario[email]"
    end
  end
end
