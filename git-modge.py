#!/usr/bin/env python

"""
Opens all changed files in the editor provided as an argument.
"""

import sys
import os
import re
import subprocess


if __name__ == "__main__":
	editor = sys.argv[1]

	success = all(map(
		lambda i: subprocess.Popen(
			"%s %s" % (editor, i[1]),
			shell=True
		).wait() == 0,
		re.findall(
			r"( M|UU) (.+)",
			subprocess.Popen(
				"git status -s",
				shell=True,
				stdout=subprocess.PIPE
			).communicate()[0]
		)
	))

	if not success:
		sys.stderr.write("one or more commands failed")
		sys.exit(1)


