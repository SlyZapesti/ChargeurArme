resource_manifest_version '44febabe-d386-4d18-afbe-5e627f4af937'

description 'Chargeur'

version '1.0.0'

server_scripts {
  'config.lua',
  'server/s_Chargeur.lua'
}

client_scripts {
  'config.lua',
  'client/c_Chargeur.lua'
}

shared_script "@es_extended/imports.lua"