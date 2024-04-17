import os
def findFiles(path, ext):
    # Complete...
    a = []
    lst = os.listdir(path)
    for fname in lst:
        path = os.path.join(path,fname)
        if os.path.isfile(path):
            ftype= "Dir"
            if fname[-3:]==ext:
                a.append(fname)

lst = findFiles(".", ".py")
print(lst)