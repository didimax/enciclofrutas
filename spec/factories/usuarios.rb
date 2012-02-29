# Read about factories at http://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :usuario do
    nome "MyString"
    sobrenome "MyString"
    data_nasc "MyString"
    genero "MyString"
    senha "MyString"
    email "MyString"
  end
end
