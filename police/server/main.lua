RegisterServerEvent('police:send', function(input)


    local embed = {
            {
            ["thumbnail"] = {
                ["url"] = "https://static.wikia.nocookie.net/alterlifepolicedepartement/images/5/51/R_%281%29.png/revision/latest?cb=20220111090530"
            },
            ["color"] = 1127128,
            ["title"] = 'poliisi hakemus',
            ["description"] = '**Nimi ja Sukunimi:** '..input[1]..'\n **Ikä:** '..input[2]..'\n **Syntymäaika:** '..input[3]..'\n **Puhelinnumero:** '..input[4]..'\n **Sukupuoli:** '..input[5]..'\n **Oletko ollut aijemmin poliisina?:** '..input[6]..'\n **Miksi haluat poliisiksi?:** '..input[7]..'\n\n **Discord: **'..input[8],
        }
    }
    
    PerformHttpRequest(Config.Webhook, function(err, text, headers) end, 'POST', json.encode({username = name, embeds = embed}), { ['Content-Type'] = 'application/json' })
end)

RegisterServerEvent('police:send1', function(input)

    local embed = {
            {
            ["thumbnail"] = {
                ["url"] = "https://static.wikia.nocookie.net/alterlifepolicedepartement/images/5/51/R_%281%29.png/revision/latest?cb=20220111090530"
            },
            ["color"] = 1127128,
            ["title"] = 'poliisi rikosilmotus',
            ["description"] = '**Nimi ja Sukunimi:** '..input[1]..'\n **Ikä:** '..input[2]..'\n **Syntymäaika:** '..input[3]..'\n **Puhelinnumero:** '..input[4]..'\n **Sukupuoli:** '..input[5]..'\n **Rikosilmoitus?:** '..input[6]..'\n\n **Discord: **'..input[7],
        }
    }
    
    PerformHttpRequest(Config.Webhook, function(err, text, headers) end, 'POST', json.encode({username = name, embeds = embed}), { ['Content-Type'] = 'application/json' })
end)    