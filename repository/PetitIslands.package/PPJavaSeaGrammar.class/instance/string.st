comments and strings
string
	| end |
	end := $" asParser.
	^ ($" asParser, (#any asParser starLazy: end), end)
		name: 'stringSeq';
		yourself.