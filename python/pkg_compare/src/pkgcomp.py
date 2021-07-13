#!/usr/bin/python

import os
import subprocess

#userdir = input()

#for root,dirs,files in os.walk("/home/nadim/Downloads/chrome_deb", topdown=False):
#    for name in files:
#      print(os.path.join(root, name))
#    for name in dirs:
#      print(os.path.join(root, name))

filehash= {}

for root,dirs,files in os.walk("/home/nadim/Downloads/chrome_deb", topdown=False):
    for name in files:
        file = os.path.join(root,name)
        filesum=subprocess.run(["md5sum", file])
        print(filesum.returncode)
