parsing - peeking
peekForExpandedNameTest: aName
	(aName = 'Q'
		and: [readStream peekFor: ${])
		ifTrue: [| uri |
			uri := self expectUpTo: $}.
			(readStream peekFor: $*)
				ifTrue: [
					context
						handleNodeTestForNamespaceURI: uri
						with: handler]
				ifFalse: [
					context
						handleNodeTestForNamespaceURI: uri
						localName: self nextNCName
						with: handler].
			^ true]
		ifFalse: [^ false]