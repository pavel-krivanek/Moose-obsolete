building presentations
workspaceIn: aComposite forSession: aSession forContext: aContext
	| targetParser  |
	targetParser := (aContext locateTopNamedPPParser) 
		ifNil: [ aSession rootParser ] 
		ifNotNil: [ :parserContext | parserContext receiver ].

	
	self sourceIn: aComposite forSession: aSession forParser: targetParser.
	self graphIn: aComposite forSession: aSession forParser: targetParser.
	self mapIn: aComposite forSession: aSession forParser: targetParser.
	self exampleIn: aComposite forSession: aSession forParser: targetParser.
	self firstIn: aComposite forSession: aSession forParser: targetParser.
	self followIn: aComposite forSession: aSession forParser: targetParser.