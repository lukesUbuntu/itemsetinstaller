#!/bin/bash
#basic bash script to install itemsets from http://leagueoflegendsmath.com/ for OSX/Mac
#run $ bash <(curl -Ls https://raw.githubusercontent.com/lukesUbuntu/itemsetinstaller/master/itemsetinstaller.sh)
ITEMSFILE='http://lolmath.net/itemsets/Update.tar.bz2'
LOLPATH=$(find /Applications/League* -type d | grep -m 1 'LoL/Config')
process_install()
{
    curl -L -o lol_items.tar.bz2 $ITEMSFILE
    tar -vxjf lol_items.tar.bz2 -C "$LOLPATH"
    echo "Finished"
}

if [ -d "$LOLPATH" ]; then
        read -p "Found Config folder $LOLPATH Install (y/n)?" do_install
        if [ "$do_install" = "y" ]; then
            process_install
        fi
       
    
  else
    echo "Cound't find league of legends config path"
fi
