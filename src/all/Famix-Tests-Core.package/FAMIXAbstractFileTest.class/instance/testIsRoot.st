tests
testIsRoot
	| file |
	file := self actualClass new.
	self assert: file isRoot.
	file parentFolder: FAMIXFolder new.
	self deny: file isRoot