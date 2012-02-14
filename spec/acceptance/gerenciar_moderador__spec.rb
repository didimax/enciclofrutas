# coding: utf-8

require 'spec_helper'

feature 'gerenciar moderador' do
  before :each do
  end
  
  scenario 'incluir moderador' do
    visit new_moderador_path
    
    fill_in 'Nome', :with => 'Diego'
    fill_in 'Sobrenome', :with => 'Gomes'
    fill_in 'Senha', :with => '123456'
    fill_in 'Pais', :with => 'Brasil'
    fill_in 'Cidade', :with => 'vitória'
    fill_in 'Genero', :with => 'macho'
    fill_in 'Data_Nasc', :with => '04/02/1990'
    fill_in 'CPF', :with => '123456789-10'
    fill_in 'RG', :with => '256.363.256-45'
    fill_in 'e-mail', :with => 'diego@email.com'
        
    click_button 'Salvar'
   
    page.should have_content 'Nome: Diego'
    page.should have_content 'Sobrenome: Gomes'
    page.should have_content 'Senha: 123456'
    page.should have_content 'Pais: Brasil'
    page.should have_content 'Cidade: vitória'
    page.should have_content 'Genero: macho'
    page.should have_content 'Data_Nasc: 04/02/1990'
    page.should have_content 'CPF: 123456789-10'
    page.should have_content 'RG: 256.363.256-45'
    page.should have_content 'e-mail: diego@email.com'
  end


  scenario 'alterar moderador' do #, :javascript => true do
    moderador = FactoryGirl.create(:moderador)
    visit edit_moderador_path(moderador)
        fill_in 'Nome', :with => 'Diego'
        fill_in 'Sobrenome', :with => 'Gomes'
        fill_in 'Senha', :with => '123456'
        fill_in 'Pais', :with => 'Brasil'
        fill_in 'Cidade', :with => 'vitória'
        fill_in 'Genero', :with => 'macho'
        fill_in 'Data_Nasc', :with => '04/02/1990'
        fill_in 'CPF', :with => '123456789-10'
        fill_in 'RG', :with => '256.363.256-45'
        fill_in 'e-mail', :with => 'diego@email.com'
   
        
    click_button 'Salvar'
        
        page.should have_content 'Nome: Diego'
        page.should have_content 'Sobrenome: Gomes'
        page.should have_content 'Senha: 123456'
        page.should have_content 'Pais: Brasil'
        page.should have_content 'Cidade: vitória'
        page.should have_content 'Genero: macho'
        page.should have_content 'Data_Nasc: 04/02/1990'
        page.should have_content 'CPF: 123456789-10'
        page.should have_content 'RG: 256.363.256-45'
        page.should have_content 'e-mail: diego@email.com'
       
    
    
  end

  
 
end

