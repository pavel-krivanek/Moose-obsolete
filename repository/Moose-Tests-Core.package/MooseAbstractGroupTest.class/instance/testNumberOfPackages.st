tests
testNumberOfPackages
	| abstractGroup |
	abstractGroup := MooseAbstractGroup new.
	self assert: abstractGroup numberOfPackages equals: 0