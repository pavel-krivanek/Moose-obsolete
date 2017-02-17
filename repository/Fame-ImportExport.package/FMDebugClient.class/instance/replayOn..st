accessing
replayOn: aParseClient 
	
	a do: [ :each |
		aParseClient 
			perform: each first
			withArguments: each allButFirst ].