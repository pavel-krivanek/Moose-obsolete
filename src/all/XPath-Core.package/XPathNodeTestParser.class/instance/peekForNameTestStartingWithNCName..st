parsing - peeking
peekForNameTestStartingWithNCName: anNCName
	| startPosition |

	startPosition := readStream position.
	(readStream peekFor: $:)
		ifTrue: [
			readStream peek == $:
				ifFalse: [
					"'::' means anNCName is an axis specifier and not the start
					of a node test, otherwise the ':' should be followed by a '*'
					or another NCName"
					(readStream peekFor: $*)
						ifTrue: [
							"a 'prefix:*' wildcard QName test"
							context
								handleNodeTestForPrefix: anNCName
								with: handler.
							^ true]
						ifFalse: [| localName |
							localName := self nextNCName.
							self peekForStartArgumentList
								ifFalse: [
									"not a function call, so it's a 'prefix:localName'
									QName test"
									context
										handleNodeTestForPrefix: anNCName
										localName: localName
										with: handler.
									^ true]]]]
		ifFalse: [
			(anNCName = 'Q'
				and: [readStream peekFor: ${])
				ifTrue: [| uri |
					"either a 'Q{uri}*' wildcard test or a 'Q{uri}localName' test"
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
				ifFalse: [
					readStream skipSeparators.
					"whitespace can be between the axis specifier and '::' separator,
					but not between the prefix and ':' QName separator, so any ':'
					not matched above but matched after #skipSeparators is an '::'
					axis separator, and anNCName is an axis specifier, not a node test"
					(readStream peekFor: $:)
						ifFalse: [
							(isParsingNodeTypeTest not
								and: [self peekForStartArgumentList])
								ifTrue: [
									(self peekForNodeTypeTest: anNCName)
										ifTrue: [^ true]]
								ifFalse: [
									context
										handleNodeTestForName: anNCName
										with: handler.
									^ true]]]].

	"anNCName is either an axis specifier or the start of a
	function call and not a node test"
	readStream position: startPosition.
	^ false.