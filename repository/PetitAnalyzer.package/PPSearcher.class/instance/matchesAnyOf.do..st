rules
matchesAnyOf: aCollectionOfParsers do: anAnswerBlock
	"Add a collection of search expressions aCollectionOfParsers, evaluate anAnswerBlock with the matched node and the previous answer."
	
	aCollectionOfParsers
		do: [ :each | self matches: each do: anAnswerBlock ]