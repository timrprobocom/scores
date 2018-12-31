# Transpose Lilypond music up half step.

import sys

xmap = {
    'a': 'bf',
    'as': 'b',
    'bf': 'b',
    'b': 'c',
    'c': 'db',
    'cs': 'd',
    'cx': 'ds',
    'd': 'ef',
    'ds': 'e',
    'e': 'f',
    'f': 'gf',
    'fs': 'g',
    'g': 'af',
    'gs': 'a'
}

for line in sys.stdin:
    new = []
    if len(line) < 4:
        print line
        continue
    for word in line.split(' '):
        if len(word) == 0:
            continue
        if word[0] in 'abcdefg':
            if len(word) > 1 and word[1] in 'sfx':
                token = word[0:2]
            else:
                token = word[0]
            if token not in xmap:
                print "Missed", token, "in", line
                sys.exit(0)
            else:
                new.append( xmap[token]+word[len(token):] )
        else:
            new.append( word )
    print ' '.join(new)

