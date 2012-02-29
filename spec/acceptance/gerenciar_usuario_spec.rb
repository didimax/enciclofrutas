# coding: utf-8

require 'spec_helper'

feature 'gerenciar usuario' do
  before :each do
  end
  
  scenario 'incluir usuario' do
    visit new_usuario_path
    
    fill_in 'Nome', :with => 'Diego'
    fill_in 'Sobrenome', :with => 'Gomes'
    fill_in 'Data_Nasc', :with => '04/02/1990'
    fill_in 'Genero', :with => 'macho'
    fill_in 'Senha', :with => '12345'
    fill_in 'email', :with => 'diego@email.com'
        
    click_button 'Salvar'
   
    page.should have_content 'Nome: Diego'
    page.should have_content 'Sobrenome: Gomes'
    page.should have_content 'Data_Nasc: 04/02/1990'
    page.should have_content 'Genero: macho'
    page.should have_content 'Senha: 12345'
    page.should have_content 'email: diego@email.com'
  end
end
