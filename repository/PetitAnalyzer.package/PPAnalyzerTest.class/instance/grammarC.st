accessing
grammarC
	"A highly recrusive grammar."

	| grammar |
	grammar := PPUnresolvedParser new.
	grammar def: (grammar , $+ asParser , grammar) / $1 asParser.
	^grammar