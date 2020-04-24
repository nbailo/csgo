#!/bin/sh
sleep 1

# ===========================================
# Параметры запуска сервера
# -------------------------------------------
token=""
gametype="0"
gamemode="0"
mapgroup="mg_active_group"
startmap="de_dust2"
svlan="0"
ip="192.168.112.131"
publicip="46.88.10.172"
port="27015"
tickrate="64"
clientport="27005"
gotvport="27020"
maxdlfilesize="200"

# ===========================================
# Настройки Workshop
# https://developer.valvesoftware.com/wiki/CSGO_Workshop_For_Server_Operators
# Для получения authkey посетите - http://steamcommunity.com/dev/apikey
# -------------------------------------------
#authkey="B013B4530D79AF01408722579CBB88F4"
#ws_collection_id="430723564"
#ws_start_map="128042593"

# ===========================================
# Запуск сервера
# -------------------------------------------

screen -A -m -d -S csgoserver1 ./srcds_run -game csgo -console -usercon -autoupdate -secure +sv_setsteamaccount ${token} -net_port_try 1 +game_type ${gametype} +game_mode ${gamemode} +mapgroup ${mapgroup} +map ${startmap} +sv_lan ${svlan} -ip ${ip} +net_public_adr ${publicip} -port ${port} -tickrate ${tickrate} +clientport ${clientport} +tv_port ${gotvport} –maxdownloadfilesizemb ${maxdlfilesize} -authkey ${authkey} +host_workshop_collection ${ws_collection_id} +workshop_start_map ${ws_start_map}
echo ////////////////////
echo // Сервер запущен //
echo ////////////////////
