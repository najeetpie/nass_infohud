fx_version 'cerulean'
use_experimental_fxv2_oal 'yes'
game 'gta5'
lua54 'yes'

description 'nass_infohud'
author 'Nass#1411'
version '1.0.0'

shared_scripts { 'config.lua' }

server_scripts { 'bridge/**/server.lua', 'server/*.lua' }

client_scripts { 'bridge/**/client.lua', 'client/*.lua' }

ui_page 'html/index.html'
files { 
  "html/*",
}