visiting - functions
visitFunctionCall: aFunctionCall
	aFunctionCall hasArguments
		ifTrue: [| oldArgumentIterator arguments |
			oldArgumentIterator := argumentIterator.
			argumentIterator :=
				XPathASTNodeVisitorIterator on: aFunctionCall arguments.
			arguments := OrderedCollection new: aFunctionCall totalArguments.
			[argumentIterator atEnd]
				whileFalse: [| argument |
					(argument := argumentIterator visitNextWith: self) isNull
						ifFalse: [arguments addLast: argument]].
			aFunctionCall arguments: arguments.
			argumentIterator := oldArgumentIterator].
	^ aFunctionCall.