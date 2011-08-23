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
import psycopg2
import shutil
import math


def pc(dbname, host='localhost', user='postgres'):
	return psycopg2.connect(database=dbname, user=user, host=host)

def msc(dbname, host='localhost', user='root', password=None):
	import MySQLdb
	return MySQLdb.connect(db=dbname, user=user, host=host)

def mc():
	import pymongo
	return pymongo.Connection('sys328', 27017)

def clear():
	print '\n' * int(os.popen('stty size', 'r').read().split()[0])

def fdiapi(path=None):
	if path is None:
		path = os.getcwd()
	sys.path.insert(0, path)
	from fsDiskIndex import api
	return api

def diff(a, b):
    result = []
    if len(a) != len(b):
            return None
    for i in range(len(a)):
            result.append((a[i] == b[i]) and '^' or ' ')
    return ''.join(result)
