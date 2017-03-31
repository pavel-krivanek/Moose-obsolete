grammar - if-then-else
ifMultiline
	^ ifPart trim,
		ifThenStart, ifThenPart, emptyLines,
		(ifElsePart trimAlign) optional,
		ifThenEnd
	map: [ :_if :_ts :_then :_el :_else :_end |
		{ _if . _then . _else }
	]