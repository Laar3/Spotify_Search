echo "This will uninstall SpotifySearch, this will also remove the config folder so make sure you back that up if you made any changes."
read -p "Do you wish to proceed? (Y/n) " input 
if [ $input == "Y" ] || [ $input == "y" ];
then 
	echo "Removing all files"
	sudo rm /bin/spotifysearch
	rm -rfd ~/.local/share/spotifysearch/
	rm -rfd ~/.config/spotifysearch/
elif [ $input == "n" ] || [ $input == "N" ];
then
	echo "Ok"
