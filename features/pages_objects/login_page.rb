require 'rspec/expectations'

class LoginPage
    include RSpec::Matchers

    def initialize
        get_screen_mappings 'login', 'core'
    end

    def clicar_entrar
        click @mappings['btn_entrar']
    end

    def escrever_email
        fill_in @mappings['campo_email']['teste.vidalink@mailinator.com']
    end

    def escrever_cpf
        fill_in @mappings['campo_cpf']['77467024223']
    end 

    def escrever_data_nascimento
        fill_in @mappings['campo_data_nascimento']['01011974']
    end

    def clicar_proximo
        click @mappings['btn_proximo']
    end

    def escrever_token_sms
        fill_in @mappings['campo_token_sms']['']
    end
end
