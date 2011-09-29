#!/usr/bin/env python

"""
Opens all changed files in the editor defined in GS_EDITOR or provided as an
argument.
"""

import sys
import os
import re
import subprocess


if __name__ == "__main__":
	if len(sys.argv) > 1:
		editor = sys.argv[1]
	else:
		editor = os.environ["GS_EDITOR"]

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


