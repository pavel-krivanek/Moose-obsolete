test follow
testFollowSet12
	| parser followSet |
	
	

	parser := 'a' asParser.
	followSet := self follow: parser in: parser.

	self assert: followSet anySatisfy: [:e | e end matches: '' ].
