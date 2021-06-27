import sys
from os import path
import os
sys.path.append(path.expanduser("~/.config/spotifysearch"))
from config import *
from spotifysearch.client import Client

myclient = Client("bdfc939ee66f4c7b972a0bdd652bbbbb", "cb054ef4f43f42a1955669e38826c51c")
results = myclient.search(input("Search: "), limit=10)
tracks = results.get_tracks()   
print("".join([f"{index + 1}: {track.name} - {track.artists[0].name} \n" for index, track in enumerate(tracks)]))
download_url = tracks[int(input("Select: ")) - 1].url
print(download_url)

command = f"spotify_dl -o {download_dir} -l {download_url}"
os.system(command)

