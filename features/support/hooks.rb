Before do |scenario|
    # Executa antes do cenário
    scenario_name = scenario.name.gsub(/\s+/,'_').tr('/','_')
        
end

After do |scenario|
    # Executa após o cenário
    scenario_name = scenario.name.gsub(/\s+/,'_').tr('/','_')

    if scenario.failed?
        # printScreen(scenario_name.downcase!, 'falhou')
    else
        # printScreen(scenario_name.downcase!, 'passou')
    end
end

Before '@revogacao_termo' do
    # Realiza a revogação do termo de aceite via API
end