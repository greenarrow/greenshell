#!/usr/bin/env python

import os
import subprocess


if __name__ == "__main__":
	repo_name = os.path.split(os.getcwd())[1]

	p = subprocess.Popen(
		"git log -1 --pretty=format:%h",
		shell=True,
		stdout=subprocess.PIPE
	)

	head_hash, err = p.communicate()
	assert p.wait() == 0

	assert subprocess.Popen(
		"git archive -o ../%s-%s.tar HEAD" % (repo_name, head_hash),
		shell=True,
	).wait() == 0

	assert subprocess.Popen(
		"gzip ../%s-%s.tar" % (repo_name, head_hash),
		shell=True,
	).wait() == 0

	print "written to ../%s-%s.tar.gz" % (repo_name, head_hash)
