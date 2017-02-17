private
goferCommitPackage: wCopy with: commitMessage

	| gofer |
	gofer := Gofer new.
	gofer repository: (self repositoryFor: wCopy).
	gofer package: wCopy packageName.
	gofer commit: commitMessage
