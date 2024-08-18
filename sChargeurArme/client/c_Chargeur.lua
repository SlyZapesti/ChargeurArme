local weaponClips = Config.ListeChargeurEtArme

-- Fonction pour obtenir le type de clip requis pour l'arme
local function getRequiredClip(weaponHash)
  for clipType, data in pairs(weaponClips) do
      for _, weaponName in pairs(data.weapons) do
          if GetHashKey(weaponName) == weaponHash then
              return clipType, data.label
          end
      end
  end
  return nil, nil
end

-- Event pour utiliser un clip
RegisterNetEvent('utiliseChargeur')
AddEventHandler('utiliseChargeur', function(clipType)
  local playerPed = PlayerPedId()
  local currentWeaponHash = GetSelectedPedWeapon(playerPed)

  -- Obtenez le type de clip requis pour l'arme actuelle
  local requiredClip, clipLabel = getRequiredClip(currentWeaponHash)

  -- Si le chargeur requis est le même que celui utilisé
  if requiredClip == clipType then
      local ammo = 30  -- Nombre de munitions à ajouter
      AddAmmoToPed(playerPed, currentWeaponHash, ammo)
      TriggerServerEvent('retireItem', clipType)
      TriggerEvent('chat:addMessage', { args = { 'Système', 'Vous avez utilisé un ' .. weaponClips[clipType].label }})
  else
      -- Si le chargeur est incorrect, informez le joueur du bon type de chargeur
      if requiredClip then
          TriggerEvent('chat:addMessage', { args = { 'Système', 'Vous avez besoin de : ' .. clipLabel .. ' pour cette arme.' }})
      else
          TriggerEvent('chat:addMessage', { args = { 'Système', 'Aucun chargeur compatible trouvé pour cette arme.' }})
      end
  end
end)
