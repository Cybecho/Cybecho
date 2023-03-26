import random
import requests
from bs4 import BeautifulSoup

base_url = 'https://www.random-art.org/?page='
jpg_urls = []
pageRange = random.randrange(1,180)

# Loop through all pages
for page in range(pageRange, (pageRange + 5)):  # Change 10 to the number of pages yo>
    url = base_url + str(page) + '&liked=0&sort=time'
    response = requests.get(url)
    soup = BeautifulSoup(response.content, 'html.parser')
    
    # Find all img tags with .jpg extension
    images = soup.find_all('img', src=lambda src: src.endswith('.jpg'))
    
    # Extract the URLs, replace "small" with "large", and append to the list
    for img in images:
        jpg_url = img['src'].replace('/small/', '/large/')
        jpg_urls.append(jpg_url)

# Save the list of .jpg URLs to a txt file
with open('imgList.txt', 'w') as file:
    for url in jpg_urls:
        file.write('https://www.random-art.org' + url + '\n')

print('imgList.txt saved successfully.')
