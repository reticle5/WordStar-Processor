#!/bin/bash

usage() {
    echo ""
    echo "Usage: $0 -s <server_name> [-f]]"
    echo "Options:"
    echo "  -s <server_name>    Server to SCP the installations files to."
    echo "  -f                  Install a full version including WordTsar."
    echo ""
}

unset -v SERVER
FULLINSTALL=false

while getopts ":s:f" options; do       # Loop: Get the next option;
                                    # use silent error checking;
                                    # options n and t take arguments.
	case "${options}" in
	    f)                          # If the option is n,
			FULLINSTALL=true        # set $NAME to specified value.
		;;

		s)                          # If the option is n,
			SERVER=$OPTARG          # set $NAME to specified value.
			;;

		*)                          # If unknown (any other) option:
		    usage
			exit                    # Exit abnormally.
			;;

	esac

done

shift "$(( OPTIND - 1 ))"

if [ -z "$SERVER" ]; then
        usage
        exit 1
fi

echo "Preparing tar file"
tar --no-xattrs --no-mac-metadata -cjf ws.tgz "WSTEMPLATE"

if [ "$FULLINSTALL" = true ]; then
    echo "Sending over for a full install"
    scp disable_ipv6.sh dosbox-x-2025.02.01.conf refresh_wordstar.sh setup_wordstar.sh upgrade_all.sh WordTsar ws.tgz ${SERVER}:.
else
    echo "Sending over for a lite install"
    scp disable_ipv6.sh dosbox-x-2025.02.01.conf refresh_wordstar.sh setup_wordstar.sh upgrade_all.sh ws.tgz ${SERVER}:.
fi

rm ws.tgz
