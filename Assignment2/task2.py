import requests
from bs4 import BeautifulSoup

def count_func(url,word):

	request= requests.get(url)
	soupp=BeautifulSoup(request.content,"html.parser")
	s=soupp.find(text=lambda text:text and word in text )
	try:
		lenn=len(s)
		print(lenn)
		if(len>0):
			return 2
		else:
			return -1
	except:
		print("")


def next_page(link):
	req = requests.get(link)
	Soup97 = BeautifulSoup(req.content, "html.parser")
	href_tag = Soup97.find("link",rel = "next")
	sports_link = href_tag['href']
	return sports_link	
	
my_url="https://propakistani.pk/ "
req= requests.get(my_url)
content= req.content
soup = BeautifulSoup(content, "html.parser")
a1= soup.find("a", attrs={"title":"Sports"})
href2=a1['href']



#here
inp = raw_input("Enter the word(s) : ")
count=0
check=0
url11=[]
for j in range(5):
	req22= requests.get(href2)
	content22= req22.content
	soup11 = BeautifulSoup(content22, "html.parser")
	for i in soup11.find_all("a", attrs={"rel":"bookmark"}):
		url11.append(i['href'])
		check=check+1
	href2=next_page(href2)

while(count < 149):
	if(count%2==0):
		countt = count_func(url11[count], inp)
		if (countt<0):
			print("does not exist")
		else:
			print('\nUrl1: {}\ncontains: {}'.format(url11[count], inp))
	count=count+1
print("program over")

	


