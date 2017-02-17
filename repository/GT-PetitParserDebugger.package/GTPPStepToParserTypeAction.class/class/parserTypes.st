private
parserTypes

	^ { 
		PPDelegateParser. 
		PPActionParser. 
		PPWrappingParser. 
		PPAndParser. 
		PPEndOfInputParser. 
		PPFlattenParser. 
		PPTokenParser. 
		PPMemoizedParser. 
		PPNotParser. 
		PPOptionalParser. 
		PPGreedyRepeatingParser. 
		PPLazyRepeatingParser. 
		PPPossessiveRepeatingParser. 
		PPTrimmingParser. 
		PPEpsilonParser. 
		PPFailingParser. 
		PPChoiceParser. 
		PPSequenceParser. 
		PPLiteralObjectParser. 
		PPLiteralSequenceParser. 
		PPPluggableParser. 
		PPPredicateObjectParser. 
		PPPredicateSequenceParser
	}