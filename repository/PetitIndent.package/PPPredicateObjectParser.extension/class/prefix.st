*PetitIndent
prefix
	| sol |
	"Consume the content as defined by IndentStack from the beginning of a line"

	sol := #startOfLine asParser.
	^ sol, ([ :context | context indentStack replay: context ] asParser
		propertyAt: #changesContext put: false;
		yourself
	)