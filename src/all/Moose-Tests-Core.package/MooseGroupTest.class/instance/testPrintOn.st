tests
testPrintOn
	| printOn |
	printOn := String streamContents: [ :stream | self model allTypes printOn: stream ].
	self assert: printOn equals: 'All famixtypes (' , self model allTypes size asString , ' FAMIXTypes)'