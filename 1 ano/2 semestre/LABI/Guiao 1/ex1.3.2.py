from Cryptodome.Hash import SHA256
import os.path
import sys
if len (sys.argv) < 2 :
    print ("Usage: python3 %s filename" % (sys.argv[0]))
    sys.exit (1)
fname = sys.argv[1] # verify if it is a file
if not os.path.exists(fname) or os.path.isdir(fname) or not os.path.isfile(fname):
    print(fname + " is not a file", file=sys.stderr)
    sys.exit (2)

h = SHA256.new()
with open(fname,"r") as file:
    for line in file:
        line = line.strip().rstrip()
        h.update(line.encode("utf-8"))
print(h.hexdigest())