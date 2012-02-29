# coding: utf-8

require 'spec_helper'

feature 'gerenciar epoca' do
  before :each do
  end
  
    scenario 'incluir epoca' do
    visit new_epoca_path
    
    fill_in 'Estação do ano', :with => 'outono/inverno'
        
    click_button 'Salvar'
   
    page.should have_content 'Estação do ano: outono/inverno'
    
    
end
    
    scenario 'alterar epoca' do #, :javascript => true do
    epoca = FactoryGirl.create(:epoca)
    visit edit_epoca_path(epoca)
    
    fill_in 'Estação do ano', :with => 'outono/inverno'
        
    click_button 'Salvar'
   
    page.should have_content 'Estação do ano: outono/inverno'
end


    scenario 'excluir epoca' do #, :javascript => true do
    epoca = FactoryGirl.create(:epoca)
    visit epocas_path

    click_link 'Excluir'
    
    Epoca.count.should == 0
  end



end
