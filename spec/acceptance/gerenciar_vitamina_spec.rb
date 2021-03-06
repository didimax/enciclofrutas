# coding: utf-8

require 'spec_helper'

feature 'gerenciar vitamina' do
  before :each do
  end
  
  scenario 'incluir vitamina' do
    visit new_vitamina_path
    
    fill_in 'Nome', :with => 'C'
    fill_in 'Beneficio', :with => 'Contra virus griparius'
    
        
    click_button 'Salvar'
   
    page.should have_content 'Nome: C'
    page.should have_content 'Beneficio: Contra virus griparius'
    
end


    scenario 'alterar vitamina' do #, :javascript => true do
    vitamina = FactoryGirl.create(:vitamina)
    visit edit_vitamina_path(vitamina)
    
    fill_in 'Nome', :with => 'C'
    fill_in 'Beneficio', :with => 'Contra virus griparius'
    
        
    click_button 'Salvar'
   
    page.should have_content 'Nome: C'
    page.should have_content 'Beneficio: Contra virus griparius'

end

    scenario 'excluir vitamina' do #, :javascript => true do
    vitamina = FactoryGirl.create(:vitamina)
    visit vitaminas_path

    click_link 'Excluir'
    
    Vitamina.count.should == 0
  end

  end
