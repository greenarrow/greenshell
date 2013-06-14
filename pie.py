import os
import sys
import datetime
import string
import glob
import re
import types
import collections
import time
import subprocess
import random
import shutil
import math

try:
    import psycopg2
except:
    pass


def pgc(dbname, host='localhost', user='postgres'):
	return psycopg2.connect(database=dbname, user=user, host=host)


def msc(dbname, host='localhost', user='root', password=None):
	import MySQLdb
	return MySQLdb.connect(db=dbname, user=user, host=host)


def clear():
	print '\n' * int(os.popen('stty size', 'r').read().split()[0])


def diff(a, b):
    result = []
    if len(a) != len(b):
            return None
    for i in range(len(a)):
            result.append((a[i] == b[i]) and '^' or ' ')
    return ''.join(result)


def dictdiff(a, b):
    for key in set(a.iterkeys()) - set(b.iterkeys()):
            print "- {%s}" % repr(key)

    for key in set(b.iterkeys()) - set(a.iterkeys()):
            print "+ {%s}" % repr(key)

    for key in set(a.iterkeys()) & set(b.iterkeys()):
            if a[key] != b[key]:
                    print "- %s" % repr({key : a[key]})
                    print "+ %s" % repr({key : b[key]})


def printt(value):
    value = str(value)
    parts = []

    for i in range(0, len(value), 3):
            parts.append(value[-i - 3:-i or None])

    return ",".join(reversed(parts))


def divide(function, sequence):
    top, bottom = [], []
    for i in sequence:
        if function(i):
            top.append(i)
        else:
            bottom.append(i)
    return top, bottom
