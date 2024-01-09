#!/usr/bin/with-contenv bashio
if bashio::config.has_value 'init_commands'; then
	echo "Detected custom init commands. Running them now."
	while read -r cmd; do
		eval "${cmd}" ||
			bashio::exit.nok "Failed executing init command: ${cmd}"
	done <<<"$(bashio::config 'init_commands')"
fi

