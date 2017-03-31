visiting - functions
visitFunctionCall: aFunctionCall
	aFunctionCall hasArguments
		ifTrue: [| oldArgumentIterator |
			oldArgumentIterator := argumentIterator.
			argumentIterator :=
				XPathASTNodeVisitorIterator on: aFunctionCall arguments.
			[argumentIterator atEnd]
				whileFalse: [argumentIterator visitNextWith: self].
			argumentIterator := oldArgumentIterator].
	^ aFunctionCall.