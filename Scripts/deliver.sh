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
(cd Binaries ; tar --no-xattrs --no-mac-metadata -cjf /tmp/ws.tgz "WSTEMPLATE")

if [ "$FULLINSTALL" = true ]; then
    echo "Sending over for a full install"
    scp Config/dosbox-x-2025.02.01.conf Scripts/refresh_wordstar.sh Scripts/setup_wordstar_stage1 Scripts/setup_wordstar_stage2.sh Scripts/upgrade_all.sh Binaries/WordTsar /tmp/ws.tgz ${SERVER}:.
else
    echo "Sending over for a lite install"
    scp Config/dosbox-x-2025.02.01.conf Scripts/refresh_wordstar.sh Scripts/setup_wordstar_stage1 Scripts/setup_wordstar_stage2.sh Scripts/upgrade_all.sh /tmp/ws.tgz ${SERVER}:.
fi
