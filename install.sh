pip install ffmpeg spotify_dl spotifysearch requests 
read -p "Install program to /bin/? Installing this way will allow you to run the program from the command line. Choosing no will put the run script in your home folder (~/) and will require you to run that specific file however this way will not require sudo. Installing to /bin is highly recomended. (Y/n)" input

if [ $input == "Y" ] || [ $input == "y" ];
then
        sudo cp spotifysearch.sh /bin/spotifysearch
	sudo chmod 555 /bin/spotifysearch
        echo To run the program enter spotifysearch into your terminal
elif [ $input == "n" ] || [ $input == "N" ];
then
	rm -rdf ~/spotifysearch
        cp spotifysearch.sh ~/spotifysearch
	chmod 544 ~/spotifysearch
        echo The file to run spotifysearch has been placed in your home folder, you can move this anywhere on your system and run the program with ./spotifysearch
fi
rm -rdf ~/.local/share/spotifysearch
mkdir ~/.local/share/spotifysearch
cp main.py ~/.local/share/spotifysearch/main.py
cp env.sh ~/.local/share/spotifysearch/env.sh


mkdir ~/.config/spotifysearch
cp config.py ~/.config/spotifysearch/config.py

echo Thank you for installing spotifysearch, the configuration file is located at ~/.config/spotifysearch/config.py 
