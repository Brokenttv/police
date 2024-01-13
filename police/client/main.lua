RegisterNetEvent('police_event', function(args)
  lib.registerContext({
    id = 'event_menu',
    title = 'Poliisi',
    options = {
      {
        title = 'poliisi rikosilmoitus ',
        event = 'police:rikos'
      },
      {
        title = 'poliisi hakemus ',
        event = 'police:hakemus'
      }
    }
  })

  lib.showContext('event_menu')
end)



CreateThread(function()
  for k, v in pairs(Config.Coords) do
    exports.ox_target:addBoxZone({
      name = v.name,
      coords = vec3(v.coords.x, v.coords.y, v.coords.z - 1),
      size = vec3(2, 0.9, 6),
      rotation = 0.0,
      options = {
        {
          event = 'police_event',
          icon = 'fa-solid fa-shield',
          label = 'poliisi',
        },
      }
    })
  end
end)

RegisterNetEvent('police:hakemus', function()
  local input = lib.inputDialog('Poliisi hakemus', {
    { type = 'input',  label = 'Nimi ja Sukunimi', required = true },
    { type = 'number', label = 'Ikä',              required = true },
    { type = 'input',   label = 'Syntymäaika',     required = true },
    { type = 'input',  label = 'Puhelinnumero',    required = true },
    {
      type = 'select',
      label = 'Sukupuoli',
      options = {
        { value = 'Mies',   label = 'Mies' },
        { value = 'Nainen', label = 'Nainen' }
      },
      required = true
    },
    {
      type = 'select',
      label = 'Oletko ollut aijemmin poliisina?',
      options = {
        { value = 'Kyllä', label = 'Kyllä' },
        { value = 'Ei',    label = 'Ei' }
      },
      required = true
    },
    { type = 'textarea', label = 'Miksi haluat poliisiksi?', required = true, min = 10, max = 300 },
    { type = 'input',    label = 'Discord:',                 required = true },
  })

  TriggerServerEvent('police:send', input)
end)

RegisterNetEvent('police:rikos', function()
  local input = lib.inputDialog('Poliisi rikosilmotus', {
    { type = 'input',  label = 'Nimi ja Sukunimi', required = true },
    { type = 'number', label = 'Ikä',              required = true },
    { type = 'input',   label = 'Syntymäaika',      required = true },
    { type = 'input',  label = 'Puhelinnumero',    required = true },
    {
      type = 'select',
      label = 'Sukupuoli',
      options = {
        { value = 'Mies',   label = 'Mies' },
        { value = 'Nainen', label = 'Nainen' }
      },
      required = true
    },
    { type = 'textarea', label = 'Rikosilmoitus?', required = true, min = 10, max = 300 },
    { type = 'input',    label = 'Discord:',       required = true },
  })

  TriggerServerEvent('police:send1', input)
end)
