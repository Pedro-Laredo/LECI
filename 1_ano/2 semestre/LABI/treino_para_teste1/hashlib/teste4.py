import sys
import os.path
import hashlib
def main():
    if len (sys.argv) < 2 :
        print("Usage python3 %s filename" %(sys.argv[0]))
        sys.exit(1)
    fname=sys.argv[1]
    if not os.path.exists(fname) or os.path.isdir(fname) or not os.path.isfile(fname):
        print(fname + "is not a file",file=sys.stderr)
        sys.exit(2)
    else:
        h = hashlib.sha1()
        f = open(fname,"rb")
        buffer = f.read(512)
        while len(buffer) > 0:
            buffer = f.read(512)
            h.update(buffer)
        print(h.hexdigest())
        

main()

