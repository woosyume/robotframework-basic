import os

def create_folder() :
    os.mkdir("test")
    print(str(os.path))

def create_sub_folder(subfoldername) :
    os.mkdir("test/" + subfoldername)

def concat_two_values(val1, val2) :
    val3 = val1 + " " + val2
    return val3