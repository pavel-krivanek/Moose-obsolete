parsing - peeking
peekForNodeTest
	| startPosition |

	startPosition := self currentPosition + 1.
	startArgumentPosition := nil.
	endArgumentPosition := nil.
	super peekForNodeTest
		ifFalse: [^ false].

	handler handleStartNodeTestPosition: startPosition.
	isParsingNodeTypeTest
		ifTrue: [
			handler handleStartFunctionCallPosition: startPosition.
			startArgumentPosition
			ifNotNil: [
				handler
					handleStartArgumentPosition: startArgumentPosition;
					handleEndArgumentPosition: endArgumentPosition].
			handler handleEndFunctionCallPosition: self currentPosition].
	handler handleEndNodeTestPosition: self currentPosition.
	^ true.