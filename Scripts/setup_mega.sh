#!/bin/bash

login_to_mega () {

        login_var=false
        while ! $login_var
        do

                echo -n "Enter your username -> "
                read username
                echo -n "Enter your password -> "
                read password

                mega-login "$username" "$password"

                if [[ $? -eq 0 ]] ; then
                        login_var=true
                else
                        echo "Failed to login ... try again ..."
                fi

        done

}

setup_mega_sync () {

        mega-mkdir /backups/`hostnamectl hostname`
        mkdir -p ~raf/backups                   ; mega-sync ~raf/backups /backups/`hostnamectl hostname`
        mkdir -p ~raf/Documents                 ; mega-sync ~raf/Documents /Documents
        mkdir -p ~raf/code/unix_common          ; mega-sync ~raf/code/unix_common /unix_common
        mkdir -p ~raf/sync                      ; mega-sync ~raf/sync /sync
	# Only for desktops that are reading/writing WordStar documents
	mkdir -p ~raf/code/WSLIVE/DOCS		; mega-sync ~/code/WSLIVE/DOCS /WordStar
	# Only on main Firefox driver machine (currently Dell XPS) and Docker server with gallery-dl (to read only on that machine)
        #mkdir -p ~raf/.mozilla                 ; mega-sync ~raf/.mozilla /mozilla
	# Only for machines that will be involved in sending/receiving .torrent files
        #mkdir -p ~raf/files                     ; mega-sync ~raf/files /files

}

wait_for_mega_sync () {

        echo "Waiting for mega-sync to finish."
        sync_var=false
        while ! $sync_var
        do

                check_var=`mega-sync | grep Pending | wc -l`
                if [[ $check_var -eq 0 ]] ; then sync_var=true ; fi

        done
        echo "Mega-sync finished. Continuing."

}

wget https://mega.nz/linux/repo/Debian_13/arm64/megacmd-Debian_13_arm64.deb && sudo apt install "$PWD/megacmd-Debian_13_arm64.deb"
login_to_mega
setup_mega_sync
wait_for_mega_sync

"$PWD/megacmd-Debian_13_arm64.deb"

