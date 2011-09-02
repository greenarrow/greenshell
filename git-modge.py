#!/usr/bin/env python

import sys
import re
import subprocess


DEFAULT_EDITOR = "gedit"


if __name__ == "__main__":
	if len(sys.argv) > 1:
		editor = sys.argv[1]
	else:
		editor = DEFAULT_EDITOR
	
	map(
		lambda i: subprocess.Popen("%s %s" % (editor, i), shell=True),
		re.findall(
			r' M (.+)',
			subprocess.Popen('git status -s', shell=True, stdout=subprocess.PIPE).communicate()[0]
		)
	)


