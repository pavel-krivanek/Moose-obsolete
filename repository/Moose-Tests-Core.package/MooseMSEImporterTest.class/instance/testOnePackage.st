tests
testOnePackage
	| mooseModel |
	mooseModel := self readMSEStream: ('((FAMIX.Package (name ''PackageA'')))' readStream).
	
	self assert: (mooseModel entities notEmpty).
	self assert: ((mooseModel allPackages collect: #name) includes: 'PackageA').