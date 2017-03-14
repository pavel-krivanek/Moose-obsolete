parsing - peeking
peekForWildCardNameTest
	(readStream peekFor: $*)
		ifFalse: [^ false].

	(readStream peekFor: $:)
		ifTrue: [
			(readStream peekFor: $*)
				ifTrue: [context handleWildcardNodeTestWith: handler]
				ifFalse: [
					context
						handleNodeTestForLocalName: self nextNCName
						with: handler]]
		ifFalse: [context handleWildcardNodeTestWith: handler].
	^ true.