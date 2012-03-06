 # coding: utf-8

require 'spec_helper'

feature 'gerenciar fruta' do
  before :each do
  end
 
  scenario 'incluir fruta' do

    moderador = FactoryGirl.create(:moderador,:nome => 'Diego') 
    epoca = FactoryGirl.create(:epoca,:estacao_do_ano => 'outono')
     
    visit new_fruta_path
   
     

    fill_in 'Nome', :with => 'morango'
    fill_in 'Nome_Cientifico', :with => 'moraguns'
    fill_in 'Peso' , :with => '10g'
    fill_in 'Cor', :with => 'vermelha com pintas pretas'
    fill_in 'Preço', :with => 'R$5 por kg'
    fill_in 'Localização', :with => 'Região Sul'
    fill_in 'Calorias', :with => '45'
    fill_in 'Informação', :with => 'Morango é a fruta mais cara na Asia'    
    
    select  'Diego', :on => 'Nome'
    select  'outono', :on => 'Estação do ano'
    
       
    click_button 'Salvar'
  
  
    page.should have_content 'Nome: morango'
    page.should have_content 'Nome_Cientifico: moraguns'
    page.should have_content 'Peso: 10g'
    page.should have_content 'Cor: vermelha com pintas pretas'
    page.should have_content 'Preço: R$5 por kg'
    page.should have_content 'Localização: Região Sul'
    page.should have_content 'Calorias: 45'
    page.should have_content 'Informação: Morango é a fruta mais cara na Asia'
    page.should have_content 'Nome: Diego'
    page.should have_content 'Estação do Ano: outono'


  end


    scenario 'alterar fruta' do #, :javascript => true do

    moderador = FactoryGirl.create(:moderador,:nome => 'Diego') 
    epoca = FactoryGirl.create(:epoca,:estacao_do_ano => 'outono')
    fruta = FactoryGirl.create(:fruta)

    visit edit_fruta_path(fruta)


    fill_in 'Nome', :with => 'morango'
    fill_in 'Nome_Cientifico', :with => 'moraguns'
    fill_in 'Peso' , :with => '10g'
    fill_in 'Cor', :with => 'vermelha com pintas pretas'
    fill_in 'Preço', :with => 'R$5 por kg'
    fill_in 'Localização', :with => 'Região Sul'
    fill_in 'Calorias', :with => '45'
    fill_in 'Informação', :with => 'Morango é a fruta mais cara na Asia'    
   
    select  'Diego', :on => 'Nome'
    select  'outono', :on => 'Estação do ano'
       
    click_button 'Salvar'
  
  
    page.should have_content 'Nome: morango'
    page.should have_content 'Nome_Cientifico: moraguns'
    page.should have_content 'Peso: 10g'
    page.should have_content 'Cor: vermelha com pintas pretas'
    page.should have_content 'Preço: R$5 por kg'
    page.should have_content 'Localização: Região Sul'
    page.should have_content 'Calorias: 45'
    page.should have_content 'Informação: Morango é a fruta mais cara na Asia'
    page.should have_content 'Nome: Diego'
    page.should have_content 'Estação do Ano: outono'

end

    scenario 'Excluir fruta' do #, :javascript => true do

    moderador = FactoryGirl.create(:moderador,:nome => 'Diego') 
    epoca = FactoryGirl.create(:epoca,:estacao_do_ano => 'outono')
    fruta = FactoryGirl.create(:fruta, :moderador => moderador, :epoca => epoca)

    visit frutas_path
    click_link 'Excluir'

  end
 
end
