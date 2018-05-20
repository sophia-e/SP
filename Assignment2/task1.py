import requests
from bs4 import BeautifulSoup
from datetime import datetime
import os

def getMP3(URL):
	req = requests.get(URL)
	links = []
	soup = BeautifulSoup(req.content, "html.parser")
	hreff = soup.find_all("a")
	for href1 in hreff:
		links.append(href1['href'])
	return links
def date():
	return os.popen('date').read()
def download_mp3(myurl):
	num = 0
	mypath = "/home/Sophia/Assignment2/task1/"
	for i in myurl:
		URL = "https://download.quranicaudio.com/quran/"+i
		links = getMP3(URL)
		links = links[-26:]
		mydir = mypath+i[:-1]
		os.mkdir(mydir)
		os.chdir(mydir)

		file = open(mydir+"/logfile", "a+")
		#date, total qari
		file.write("%s total qari are %d\n"%(date().strip("\n"),len(myurl)))
		num = num + 1
		#2017-05-14 08:57:09 Start Processing 1 out 32 
		file.write("%s Start Processing %d out of %d\n" %(date().strip("\n"),num,len(myurl)))
		file.write("%s "%(date().strip("\n")))		
		for i in links:
			file.write("%s "%(date().strip("\n")))
			file.write(" %s START"%(i)) 
			os.system('wget -c "{}" '.format("https://download.quranicaudio.com/quran/"+i+i))
			file.write("%s "%(date().strip("\n")))
			file.write(" %s END"%(i))  
		file.close()		
		os.chdir(mypath)
print("main")
my_url_is=" https://download.quranicaudio.com/quran/ "
mp3=getMP3(my_url_is)
print[mp3]
download_mp3(mp3)
