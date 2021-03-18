# coding=utf-8
import requests #用于获取网页
from bs4 import BeautifulSoup  #用于分析网页

ea = input("网址:")
url = ea
headers = {
    'accept': 'text/javascript, application/javascript, application/ecmascript, application/x-ecmascript, */*; q=0.01',
    'accept-encoding': 'gzip, deflate, br',
    'accept-language': 'zh-CN,zh;q=0.9',
    'user-agent': 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/219.76.29.42 Safari/537.36'
}#get访问的header，user-agent参数必填
string = requests.get(url,headers=headers)
print (string.text)