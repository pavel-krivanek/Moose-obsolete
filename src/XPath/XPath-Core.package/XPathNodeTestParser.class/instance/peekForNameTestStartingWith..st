parsing - peeking
peekForNameTestStartingWith: anNcName
	(readStream peekFor: $:)
		ifTrue: [
			readStream peek == $: ":: axis specifier"
				ifTrue: [^ false]
				ifFalse: [^ self peekForQualifiedNameTestWithPrefix: anNcName]]
		ifFalse: [
			^ (self peekForExpandedNameTest: anNcName)
				or: [self peekForNameTestOrNoteTypeTest: anNcName]]