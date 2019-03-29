FROM cm2network/csgo
ENTRYPOINT ./home/steam/steamcmd/steamcmd.sh +login anonymous +force_install_dir /home/steam/csgo-dedicated +app_update 740 +quit && \
		./home/steam/csgo-dedicated/srcds_run -game csgo -console -autoupdate -steam_dir /home/steam/steamcmd/ -steamcmd_script /home/steam/csgo-dedicated/csgo_update.txt -usercon +fps_max $SRCDS_FPSMAX -tickrate $SRCDS_TICKRATE -port $SRCDS_PORT -tv_port $SRCDS_TV_PORT -maxplayers_override $SRCDS_MAXPLAYERS +game_type ${SRCDS_GAMETYPE} +game_mode ${SRCDS_GAMEMODE} +mapgroup ${SRCDS_MAPGROUP} +map ar_baggage +sv_setsteamaccount $SRCDS_TOKEN +rcon_password $SRCDS_RCONPW +sv_password $SRCDS_PW +sv_region $SRCDS_REGION

