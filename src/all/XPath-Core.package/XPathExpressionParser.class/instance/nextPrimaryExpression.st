parsing
nextPrimaryExpression
	readStream skipSeparators.
	(self peekForVariableReference
		or: [self peekForParenthesizedExpression
			or: [self peekForStringLiteral
				or: [self peekForNumberLiteral]]])
		ifFalse: [self nextFunctionCall].