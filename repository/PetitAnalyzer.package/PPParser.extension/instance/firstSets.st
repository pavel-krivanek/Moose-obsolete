*petitanalyzer-querying
firstSets
	"Answer a dictionary with all the parsers reachable from the receiver as key and their first-set as value. The first-set of a parser is the list of terminal parsers that begin the parser derivable from that parser."
	
	| firstSets |
	firstSets := IdentityDictionary new.
	self allParsersDo: [ :each |
		firstSets at: each put: (each isFirstSetTerminal
			ifTrue: [ IdentitySet with: each ]
			ifFalse: [ IdentitySet new ]).
		each isNullable
			ifTrue: [ (firstSets at: each) add: PPSentinel instance ] ].
	[	| changed tally |
		changed := false.
		firstSets keysAndValuesDo: [ :parser :first |
			tally := first size.
			parser firstSets: firstSets into: first.
			changed := changed or: [ tally ~= first size ] ].
		changed ] whileTrue.
	^ firstSets