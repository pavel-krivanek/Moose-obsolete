sources
exampleNestingAndTitle

	| b |
	b := RTMondrian new.
	b shape rectangle withTextAbove.
	b nodes: RTShape withAllSubclasses forEach: [:cls | 
		b shape rectangle color: Color white; size: #numberOfLinesOfCode.
		b nodes: cls rtmethods. b layout grid ].
	b flowLayout.
	^ b build