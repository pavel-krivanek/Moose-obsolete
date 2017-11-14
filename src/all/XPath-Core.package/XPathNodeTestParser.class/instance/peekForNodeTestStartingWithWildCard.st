parsing - peeking
peekForNodeTestStartingWithWildCard
	(readStream peekFor: $*)
		ifFalse: [^ false].

	(readStream peekFor: $:)
		ifTrue: [
			(readStream peekFor: $*)
				ifTrue: [state handleWildcardNodeTestWith: handler]
				ifFalse: [
					state
						handleNodeTestForLocalName: self nextNCName
						with: handler]]
		ifFalse: [state handleWildcardNodeTestWith: handler].
	^ true.