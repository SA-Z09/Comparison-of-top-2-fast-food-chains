import pandas as pd 
import os
import requests
from bs4 import BeautifulSoup
htmlcontent = requests.get("https://en.wikipedia.org/wiki/Starbucks#Locations")
bs = BeautifulSoup(htmlcontent.text, 'html.parser')
bs.find_all('table',
attrs={'style':'width:100%;'})
extract = bs.find_all('table', attrs={'style':'width:100%;'})
final_extract = extract[0].find_all('li')
final_extract
len(final_extract)
title_list = []
for i in range(len(final_extract)):
    title_list.append(final_extract[i].a['title'],final_extract[i].strip(':').strip())
    final_extract[i].text
    title_list
    df = pd.DataFrame(title_list=)
    df
