# Read about factories at http://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :fruta do
    nome "MyString"
    nome_cientifico "MyString"
    peso "MyString"
    cor "MyString"
    preco "MyString"
    localizacao "MyString"
    calorias "MyString"
    informacao "MyString"
    moderador nil
  end
end
