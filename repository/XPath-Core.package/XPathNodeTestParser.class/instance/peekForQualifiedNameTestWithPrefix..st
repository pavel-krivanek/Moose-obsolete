parsing - peeking
peekForQualifiedNameTestWithPrefix: aPrefix
	(readStream peekFor: $*)
		ifTrue: [
			context
				handleNodeTestForPrefix: aPrefix
				with: handler.
			^ true]
		ifFalse: [| localName |
			localName := self nextNCName.
			self peekForStartArgumentList "function"
				ifTrue: [^ false]
				ifFalse: [
					context
						handleNodeTestForPrefix: aPrefix
						localName: localName
						with: handler.
					^ true]].