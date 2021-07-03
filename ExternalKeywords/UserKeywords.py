import os

def create_folder() :
    os.mkdir("test")
    print(str(os.path))

def create_sub_folder(subfoldername) :
    os.mkdir("test/" + subfoldername)