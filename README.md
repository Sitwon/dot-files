# dot-files

Nothing fancy here, just my Linux dot files.


## install

This is a script I wrote to install/update my dot files so I can keep them
consistent across systems I use.

It relies on the existence of a filed named `private.bash` in the current
directory, which is explicitly not included in the repository. This file
contains private or site-specific configuration strings (such as usernames and
passwords).

In order to make things a little easier, the install script automatically
translates a trailing dot in the names of files in the repository to a leading
dot in the name of the install-target. Also, files ending in .tmpl are
considered template files and contain tokens which are replaced with private
or site-specific strings at install-time.

Example private.bash:

	#!/bin/bash
	
	# List of files or patterns for files you don't wish to be installed
	# or updated.
	blacklist=(
		'ignoreme'
	  )
	
	# List of replacements for template files.
	# Occurrences of !$<key> in the template file will be replaced with the
	# corresponding value from this associative array.
	declare -A replace
	replace=(
		[mail.user]="email address"
		[mail.passwd]="password"
		[mail.name]="your name"
		[mail.imap]="imap.gmail.com"
		[mail.smtp]="smtp.gmail.com"
		[github.user]="username"
		[github.token]="token"
	  )
