
require 'faker'

class RegistroPage
    include Capybara::DSL

    def acessar
        visit "/index.php"
    end 

    def criar_email
     find(".login").click
     find("#email_create").set Faker::Internet.email

    end 

    def botao
     find("#SubmitCreate").click
    end 
   
    def preencher

     find("#uniform-id_gender1").click
     find("#customer_firstname").set Faker::Name.name
     find("#customer_lastname").set Faker::Name.name
     find('#email').set Faker::Internet.email
     find("#passwd").set '123456'
     find("#uniform-days option[value ='3']").click
     find("#uniform-months option[value ='3']").click
     find("#uniform-years option[value ='2000']").click


     find("#uniform-newsletter").click
     find("#firstname").set Faker::Name.name
     find("#lastname").set Faker::Name.name
     find("#company").set Faker::Name.name
     find("#address1").set Faker::Address.street_name
     find("#city").set Faker::Address.city
     find("#id_state option[value ='3']").click 
     find("#postcode").set '00000'
     find("#id_country option[value ='21']").click 
     find("#other").set 'Nada para preencher era so para automatiazar tbm'
     find("#phone").set Faker::Number.number
     find("#phone_mobile").set Faker::Number.number
     find("#alias").set "Rua dois"

    end 

    def registrar 

     find("#submitAccount").click
     sleep 10
    
    end











    end
