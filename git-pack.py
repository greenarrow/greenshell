#!/usr/bin/env python

import os
import subprocess


if __name__ == "__main__":
	repo_name = os.path.split(os.getcwd())[1]

	head_hash, err = subprocess.Popen(
		"git log -1 --pretty=format:%h",
		shell=True,
		stdout=subprocess.PIPE
	).communicate()

	subprocess.Popen(
		"git archive -o ../%s-%s.tar HEAD" % (repo_name, head_hash),
		shell=True,
	).wait()

	subprocess.Popen(
		"gzip ../%s-%s.tar" % (repo_name, head_hash),
		shell=True,
	).wait()
