testing
testPluggable
	| block parser |
	block := [ :stream | stream position ].
	parser := block asParser.
	self assert: parser block equals: block