rules
matches: aParser do: anAnswerBlock
	"Add a search expression aParser, evaluate anAnswerBlock with the matched node and the previous answer."

	self addRule: (PPSearchRule searchFor: aParser thenDo: anAnswerBlock)