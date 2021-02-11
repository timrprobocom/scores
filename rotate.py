#! /usr/local/bin/python3
#
#  Given   rotate.py 1 3 2 4
#  swaps the middle two of every group of four blank-delimited lines
#
#  2 3 4 1  says 1 gets what used to be 2

import sys

# Read the arguments.

if len(sys.argv) != 5:
    print( "usage:  rotate.py 1 2 3 4 < input" )
    sys.exit(-1)

rotation = [int(i)-1 for i in sys.argv[1:]]

def rotate( gather ):
    if len(gather) == 4:
        for i in rotation:
            print( gather[i] )
    elif gather:
        print( '\n'.join(gather) )

gather = []
for line in sys.stdin.readlines():
    line = line.rstrip()
    if not line:
        rotate( gather )
        gather = []
        print( line )
    else:
        gather.append( line )

rotate( gather )
