import os

def printDirFiles(d):
    lst = os.listdir(d)
    for fname in lst:
        path = os.path.join(d, fname)
        if os.path.isfile(path):
            ftype = "FILE"
        elif os.path.isdir(path):
            ftype = "DIR"
        else:
            ftype = "?"
        print(ftype, path)
    return


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


    ...


def main():
    print("Testing printDirFiles('..'):")
    printDirFiles(".")

    print("\nTesting findFiles('.', '.py'):")
    lst = findFiles(".", ".py")
    print(lst)
    assert isinstance(lst, list)

    print("\nTesting findFiles('..', '.csv'):")
    lst = findFiles("..", ".csv")
    print(lst)

if __name__ == "__main__":
    main()
