# coding: utf-8

require 'spec_helper'

feature 'gerenciar mercado' do
  before :each do
  end
  
    scenario 'incluir mercado' do
    visit new_mercado_path 
    
    fill_in 'Nome', :with => 'Wal-Mart'
    fill_in 'Endereço', :with => 'Parque São Caetano'
    fill_in 'Telefone', :with => '2788-8989'
        
    click_button 'Salvar'
   
    page.should have_content 'Nome: Wal-Mart'
    page.should have_content 'Endereço: Parque São Caetano'
    page.should have_content 'Telefone: 2788-8989'
    
  end 

    scenario 'alterar mercado' do #, :javascript => true do
    mercado = FactoryGirl.create(:mercado)
    visit edit_mercado_path(mercado)
    
    fill_in 'Nome', :with => 'Wal-Mart'
    fill_in 'Endereço', :with => 'Parque São Caetano'
    fill_in 'Telefone', :with => '2788-8989'
        
    click_button 'Salvar'
   
    page.should have_content 'Nome: Wal-Mart'
    page.should have_content 'Endereço: Parque São Caetano'
    page.should have_content 'Telefone: 2788-8989'

end
    scenario 'excluir vitamina' do #, :javascript => true do
    mercado = FactoryGirl.create(:mercado)
    visit mercados_path

    click_link 'Excluir'
    
    Mercado.count.should == 0
  end

end
