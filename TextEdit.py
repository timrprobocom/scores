import os
import sys
from pprint import pprint
pth = sys.argv[1]

# Remove textedit://
cmd = pth[11:]
parts = cmd.split(':')
fname = ';'.join(parts[0:3])
line = int(parts[2])
column = int(parts[3])

pprint(sys.argv)
os.system('gvim --remote '+fname)
