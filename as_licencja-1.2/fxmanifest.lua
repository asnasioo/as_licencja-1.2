fx_version 'cerulean'
game 'gta5'

description 'Skrypt na nadawanie licencji By asnasioo & nikczu'
author 'asnasioo & nikczu'
version '1.2'

lua54 'yes' 

shared_scripts {
    '@es_extended/imports.lua',
    '@ox_lib/init.lua',
    'config.lua'
}

server_script 's.lua'
client_script 'c.lua'
