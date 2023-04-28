#!/usr/bin/env python3
import os
import re
from epicstore_api import EpicGamesStoreAPI, OfferData

api = EpicGamesStoreAPI()
free = api.get_free_games()
print(free)
game_name = ''
dictionary = {}
epic_list = os.path.join( os.path.expanduser( '~' ), 'dotfiles/i3/info_files/epic_list.txt' )

with open(epic_list) as file:
 for line in file:
 
    dictionary[line.strip()] = ''#value.strip()

#print (free['data']['Catalog']['searchStore']['elements'])
for free_data in free['data']['Catalog']['searchStore']['elements']:
    if type(free_data['promotions']) is dict:
        if len(free_data['promotions']['promotionalOffers']) == 1 and free_data['promotions']['promotionalOffers'][0]['promotionalOffers'][0]['discountSetting']['discountType'] == 'PERCENTAGE' and free_data['promotions']['promotionalOffers'][0]['promotionalOffers'][0]['discountSetting']['discountPercentage'] == 0:
            game_name = free_data['title']
            game_name = re.sub('[^a-zA-Z0-9 ]+', '', game_name)
            game_name = re.sub(' +', ' ', game_name)

            if game_name not in dictionary:
                print(game_name, end='')
                quit()
