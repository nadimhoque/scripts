#!/usr/bin/python

import csv

artists={}
mainlist = open('allsongplaylist.csv','r',newline='')
proccsv=csv.DictReader(mainlist,delimiter=';')

print(proccsv.fieldnames)

for i in proccsv:
    if i['artist'] not in artists.keys():
        artists[i['artist']] = 1

for key,value in artists.items():
    print(key)