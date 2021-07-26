def click_button(button)
    wait_for_button_to_exist button
    $driver.find_element(:xpath, '#{button}').click
    $logger.info("Clicou no botão #{button} usando o tipo de busca XPTAH")
end

def fill_in(el, text)
    case el['tipo_busca']
    when 'XPATH'
        element = $driver.find_element(:xpath, el['value'])
    when 'ID'
        element = $driver.find_element(:id, el['value'])
    when 'CLASS'
        element = $driver.find_element(:class, el['value'])
    end
    element.clear
    element.send_keys text
    $logger.info("Preencheu o campo ${el} usando o tipo de busca #{el['tipo_busca']} com o valor #{text}")
end